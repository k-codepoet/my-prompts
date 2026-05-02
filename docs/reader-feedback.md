# Reader Feedback

Reader feedback is ground truth for reader-facing writing.

## Slack

Use:

```text
/myprompts feedback [fail|candidate|pass] [artifact|general] | notes
```

Examples:

```text
/myprompts feedback fail outputs/writing/the-map-is-the-journey/paired-dawns-v0.1.md | Too abstract. This does not sound like my writing.
/myprompts feedback fail general | Stop using 자국/결/손바닥 as emotional shorthand.
```

The bot writes `feedback/reader/F-*.yml`.

## Rules

- `reader_role: R0` means user feedback.
- Any open R0 `fail` blocks PASS for the target artifact.
- `artifact: general` applies to all future reader-facing writing.
- Writer and critic must read `feedback/reader/` before creating or evaluating `outputs/writing/**/*.md`.

## Reader Roles

- R0: user-reader. Overrides automated evaluation.
- R1: close real reader with no worldbuilding context.
- R2: plain editor focused on Korean prose clarity.

See `prompts/writing/reader-first-standard.md`.
