#!/usr/bin/env bash
# generate-site-manifest.sh — site/manifest.json 생성
# 자율 루프가 박는 산출물을 prompt.codepoet.site에 자동 노출하기 위한 카탈로그.
#
# 호출 시점:
#   - tick.sh 종료 직전 (자동, 매 tick)
#   - 수동: scripts/generate-site-manifest.sh
#
# 산출:
#   site/manifest.json  — 카테고리별 파일 리스트 + frontmatter title/version
#
# 카테고리 매핑:
#   outputs/writing/           → writings
#   outputs/worldbuilding/     → world
#   outputs/art/               → art
#   outputs/alignment/         → alignment
#   outputs/design/            → design
#   outputs/critique/          → critique
#   outputs/code/              → code (게임 등 — link to prototype URL)
#   decisions/closed/          → decisions
#   generations/gen-*/cycles/  → ticks (전체) + arguments + decision-traces
#
# nginx + 클라이언트 마크다운 렌더러가 이 파일을 읽어 네비게이션을 그린다.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SITE_DIR="$ROOT/site"
MANIFEST="$SITE_DIR/manifest.json"

mkdir -p "$SITE_DIR"

python3 - "$ROOT" "$MANIFEST" <<'PY'
import json, os, sys, re
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(sys.argv[1])
OUT = Path(sys.argv[2])

def parse_fm(text):
    """간단 frontmatter 파서 (yaml 의존 줄이려고 직접)."""
    if not text.startswith("---"):
        return {}
    end = text.find("\n---", 3)
    if end < 0:
        return {}
    body = text[3:end]
    fm = {}
    for line in body.splitlines():
        m = re.match(r"^([A-Za-z_][\w-]*):\s*(.*?)\s*$", line)
        if m:
            k, v = m.group(1), m.group(2)
            v = v.strip().strip("'\"")
            fm[k] = v
    return fm

def first_h1(text):
    for line in text.splitlines():
        if line.startswith("# "):
            return line[2:].strip()
    return None

def file_meta(path):
    rel = str(path.relative_to(ROOT))
    title = None
    version = None
    try:
        text = path.read_text(errors="ignore")
        fm = parse_fm(text)
        title = fm.get("title") or fm.get("name")
        version = fm.get("version")
        if not title:
            title = first_h1(text)
    except Exception:
        pass
    if not title:
        title = path.stem
    return {
        "path": rel,
        "title": title,
        "version": version,
        "mtime": int(path.stat().st_mtime),
        "size": path.stat().st_size,
    }

def collect(glob_root, pattern, suffix):
    """glob_root 아래에서 pattern 매칭 + suffix 끝나는 파일 수집."""
    base = ROOT / glob_root
    if not base.exists():
        return []
    items = []
    for p in base.rglob(pattern):
        if p.suffix != suffix:
            continue
        if p.name.startswith("."):
            continue
        items.append(file_meta(p))
    items.sort(key=lambda x: -x["mtime"])
    return items

def collect_images_with_meta():
    """
    *.png + 짝꿍 *.png.meta.yml 이 둘 다 있는 이미지만 수집.
    UUID 이름의 game-asset 라이브러리(meta.yml 없음)는 자연스럽게 제외.
    """
    items = []
    for p in ROOT.rglob("*.png"):
        if p.name.startswith("."):
            continue
        # site/ 안 빌드 산출물(prototype/dist/)은 제외 — 이미 게임 카드로 노출
        rel = str(p.relative_to(ROOT))
        if rel.startswith("site/") or "/prototype/dist/" in rel or "/node_modules/" in rel:
            continue
        meta_path = p.parent / (p.name + ".meta.yml")
        if not meta_path.exists():
            continue
        meta = {}
        try:
            mtext = meta_path.read_text(errors="ignore")
            # 간단 yaml 파싱 (여러 줄 |·>는 단일 라인 모으기)
            current_key = None
            buf = []
            for line in mtext.splitlines():
                m = re.match(r"^([A-Za-z_][\w-]*):\s*(.*?)\s*$", line)
                if m and not line.startswith(" "):
                    if current_key:
                        meta[current_key] = "\n".join(buf).strip()
                        buf = []
                    k, v = m.group(1), m.group(2)
                    if v in ("|", ">"):
                        current_key = k
                    else:
                        meta[k] = v.strip().strip("'\"")
                        current_key = None
                elif current_key and (line.startswith("  ") or line.startswith("\t")):
                    buf.append(line.strip())
            if current_key:
                meta[current_key] = "\n".join(buf).strip()
        except Exception:
            pass
        items.append({
            "path": rel,
            "meta_path": str(meta_path.relative_to(ROOT)),
            "title": meta.get("id") or p.stem,
            "caption": meta.get("caption", ""),
            "category": meta.get("category", "illustration"),
            "creator": meta.get("creator", ""),
            "source_artifact": meta.get("source_artifact", ""),
            "source_section": meta.get("source_section", ""),
            "size": meta.get("size", ""),
            "mtime": int(p.stat().st_mtime),
            "bytes": p.stat().st_size,
        })
    items.sort(key=lambda x: -x["mtime"])
    return items

categories = {
    "writings": collect("outputs/writing", "*.md", ".md"),
    "world": collect("outputs/worldbuilding", "*.md", ".md"),
    "art": collect("outputs/art", "*.md", ".md"),
    "alignment": collect("outputs/alignment", "*.md", ".md"),
    "design": collect("outputs/design", "*.md", ".md"),
    "critique": collect("outputs/critique", "*.md", ".md"),
    "code-docs": collect("outputs/code", "*.md", ".md"),
    "decisions": collect("decisions/closed", "*.yml", ".yml"),
    "ticks": collect("generations", "tick-*.md", ".md"),
    "arguments": collect("generations", "*.md", ".md"),  # 아래에서 ticks 빼고 좁힘
    "decision-traces": collect("generations", "D-*.md", ".md"),
}

illustrations = collect_images_with_meta()

# arguments 는 generations 안에서 ticks/decision-traces 빼고
ticks_paths = {x["path"] for x in categories["ticks"]}
traces_paths = {x["path"] for x in categories["decision-traces"]}
categories["arguments"] = [
    x for x in categories["arguments"]
    if x["path"] not in ticks_paths
    and x["path"] not in traces_paths
    and "/arguments/" in x["path"]
]

# 게임/프로토타입 (특수) — outputs/code/*/prototype/dist/index.html 가 있으면 등록
prototypes = []
for p in (ROOT / "outputs/code").glob("*/prototype/dist/index.html"):
    name = p.parents[2].name  # g-the-map-walker
    prototypes.append({
        "name": name,
        "url": f"/games/{name}/",
        "mtime": int(p.stat().st_mtime),
    })

# 루트 활성 산출물 (current.md 등)
root_docs = []
for fname in ["current.md", "seed.md", "BOOTSTRAP.md", "MANIFESTO.md"]:
    p = ROOT / fname
    if p.exists():
        root_docs.append(file_meta(p))

manifest = {
    "generated_at": datetime.now(timezone.utc).isoformat(),
    "root_docs": root_docs,
    "prototypes": prototypes,
    "illustrations": illustrations,
    "categories": categories,
    "stats": {k: len(v) for k, v in categories.items()} | {"illustrations": len(illustrations)},
}

OUT.write_text(json.dumps(manifest, ensure_ascii=False, indent=2))
print(f"[manifest] wrote {OUT} — {sum(len(v) for v in categories.values())} entries + {len(prototypes)} prototypes")
PY
