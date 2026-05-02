---
id: reader-first-writing-standard
version: v1
created_at: 2026-05-02
applies_to:
  - outputs/writing/**/*.md reader-facing portion
  - prompts that create or evaluate reader-facing writing
owner: writer
evaluators: [critic, voice-keeper]
human_feedback_dir: feedback/reader/
---

# Reader-First Writing Standard v1

This standard overrides older writing gates when the output is meant for a human reader.
Worldbuilding notes, internal tick logs, audit tables, and debug sections may stay technical.
Reader-facing writing must not read like a world manual.

## 1. Reader Roles

Use three reader roles, in this order.

| Reader | Who they are | What they judge | Gate |
|---|---|---|---|
| **R0: User-reader** | The human owner of this project, or their explicit feedback in `feedback/reader/` | "Would I publish this under my name, or show it to someone close to me?" | Any R0 fail overrides every automated PASS |
| **R1: Close real reader** | A spouse, colleague, or friend with no worldbuilding context | "Can I tell what happened, why it matters, and what feeling remains?" | Fail if the answer needs glossary terms |
| **R2: Plain editor** | A Korean prose editor who values clarity over lore | "Does this sound like a human essay/story, not a prompt artifact?" | Fail if the prose is ornamental, repetitive, or self-explaining |

The old five-person critic persona pool may still be used for games and visual artifacts.
For writing, the three roles above are mandatory.

## 2. Actual Author Voice

Before writing or rewriting reader-facing prose, writer must read at least two real corpus files:

- `/home/choigawoon/k-codepoet/my-essay/content/my-own-game.mdx`
- `/home/choigawoon/k-codepoet/my-essay/content/blame-to-me.mdx`
- `/home/choigawoon/k-codepoet/my-essay/content/my-own-customer.mdx`
- `/home/choigawoon/k-codepoet/my-essay/content/answers.mdx`
- `/home/choigawoon/k-codepoet/my-essay/content/talking-to-people.mdx`

Record the read paths in the output metadata or meta section.

Observed author style:

- Starts from a plain confession, question, or concrete tension.
- Uses short Korean paragraphs, usually one to four sentences.
- Names real stakes: company, family, money, value, anger, self-doubt, learning, responsibility.
- Lets abstraction come after the concrete situation.
- Does not hide behind invented nouns.
- Repeats a clear sentence when it matters, not a symbolic label.
- Uses "나는" honestly when the piece is essay-like; fiction should still expose a recognizable want, fear, or contradiction.

## 3. World-Term Budget

The following terms are toxic in reader-facing prose unless there is a strong literal reason:

`자국`, `결`, `손바닥`, `손금`, `새벽`, `흙`, `색조`, `자국빛`, `종이`, `지도`, `박힘`, `자리`, `박자`, `본인`, `옅게`

Rules:

- First 500 characters: zero toxic terms.
- After that: at most three toxic terms per 1500 Korean characters.
- Never use toxic terms in titles, section headings, or the first sentence.
- A character may not explain their emotional life using these terms.
- If a toxic term appears, the previous two sentences must already make sense without the world concept.

Hard fail:

- More than one toxic term in a paragraph.
- Any sentence where a toxic term carries the main emotional meaning.
- Any audit that passes a piece by averaging away a toxic-term violation.

## 4. Production Rules

Writer must do this for every reader-facing writing task:

1. Read at least two real corpus files from §2.
2. Read all new files in `feedback/reader/` that mention the target artifact, plus any `general` feedback.
3. Write a one-paragraph plain-language brief before drafting:
   - Who is this about?
   - What happened?
   - What did the person want?
   - What hurt, relieved, embarrassed, or changed them?
4. Draft in plain Korean first.
5. Add world metaphors only if the plain draft already works.
6. If the plain draft works without a world term, leave the world term out.

Reader-facing outputs must include a short meta section:

```yaml
source_author_corpus:
  - /home/choigawoon/k-codepoet/my-essay/content/...
human_feedback_used:
  - feedback/reader/...
reader_first_status: candidate | pass | fail
toxic_terms_count:
  first_500_chars: 0
  total: N
```

## 5. Critic Gate

Critic must not give an overall PASS unless all gates pass:

| Gate | Pass condition |
|---|---|
| R0 user feedback | No unresolved user rejection in `feedback/reader/` |
| Publish-under-name | The piece could plausibly be shown as a CodePoet draft without embarrassment |
| No-glossary reading | R1 can understand the emotional situation without knowing the world bible |
| Toxic-term budget | §3 passes exactly, with no averaging |
| Author-voice match | At least three style traits from §2 are visible in the reader portion |
| Emotional aftertaste | R1 can name the remaining feeling in everyday Korean |

If any gate fails, the result is FAIL or CANDIDATE, never PASS.

## 6. Voice-Keeper Override

For reader-facing writing, voice-keeper must not require every artifact to metaphorize all manifesto keywords.
That requirement is cycle-level only.

Artifact-level writing alignment asks:

- Does it contradict the manifesto? If yes, fail.
- Does it preach the manifesto? If yes, fail.
- Does it sound unlike the actual author corpus? If yes, fail.
- Does it overfit the world metaphor at the cost of human readability? If yes, fail.

Metaphor clarity is never allowed to compensate for poor reader empathy.

## 7. Feedback Handling

Human feedback lives in `feedback/reader/`.
It may be created by Slack (`/myprompts feedback ...`), a script, or direct file edit.

Feedback fields:

- `artifact`: target path or `general`
- `reader_role`: usually `R0`
- `verdict`: `fail`, `candidate`, or `pass`
- `notes`: what felt wrong or right
- `must_fix`: concrete requirements for the next rewrite

Before producing new writing or critique, writer and critic must scan this directory.
Unresolved R0 `fail` feedback blocks publication of the target artifact.
