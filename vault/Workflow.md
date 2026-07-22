# Obsidian Vault Workflow — Master's Work

Workflow for `masters/vault/`, covering naming, tags, note templates, and the general day-to-day flow for coursework, thesis, and advisor notes.

## Naming convention

Use `YYYY-MM-DD` prefixes only for time-anchored notes (lectures, meetings). Use descriptive slugs for everything else (concepts, thesis notes, proofs).

```
coursework-notes/
  topology/
    2026-08-25 quotient spaces.md          # lecture note
    concept - quotient topology.md          # standalone reference note
  real-analysis/
    2026-08-26 lebesgue integral.md

thesis-notes/
  concept - galois groups.md
  concept - cubic reciprocity.md
  proof - eisenstein criterion.md

advisor-meetings/
  2026-08-14 rowe - proposal scope.md

reading/
  author-year - short-title.md            # e.g. "lang-2002 - algebra ch5"
```

Rule of thumb: if you'll ever ask "when did this happen," date-prefix it. If you'll ever ask "what do I know about X," slug it by concept instead.

## Tags

Tags answer "what kind of thing is this" and "what's it for" — not the topic (that's what links and the thesis MOC are for). Keep this list short so it doesn't rot.

**Type** — what kind of note: `#lecture` `#homework` `#concept` `#proof` `#meeting` `#reading` `#question`

**Status** — mainly for thesis material and proofs: `#todo` `#needs-review` `#done`

Avoid topic tags (`#galois`, `#measure-theory`). Use `[[wikilinks]]` and the thesis MOC instead — two competing organization systems (tags and links both trying to capture topic) is worse than one.

## Note templates

### Lecture note

`coursework-notes/<course>/YYYY-MM-DD <topic>.md`

```markdown
---
type: lecture
course: topology
date: 2026-08-25
---

# Quotient spaces

## Key definitions


## Theorems


## Open questions
- 

## Links
- Builds on: [[concept - subspace topology]]
```

### Homework note

Pairs with the actual `.typ`/PDF in `coursework/` — holds the thinking, not the write-up.

```markdown
---
type: homework
course: real-analysis
set: hw03
status: todo
---

# HW03 scratch — Real Analysis

## Problem 2
Approach: 


## Stuck points
- 

## Solution file
[[coursework/real-analysis/hw03/hw03.typ]]
```

### Concept note

Evergreen, no date. Used by both coursework and thesis. This is the note type worth being most disciplined about — it's what makes the vault more than a chronological log.

```markdown
---
type: concept
status: needs-review
---

# Galois groups

## Statement / definition


## Why it matters (for thesis)


## Related
- [[concept - cubic reciprocity]]
- [[2026-08-14 rowe - proposal scope]]
```

### Advisor meeting note

`advisor-meetings/YYYY-MM-DD rowe - <topic>.md`

```markdown
---
type: meeting
date: 2026-08-14
with: rowe
---

# Meeting — proposal scope

## Discussed


## Action items
- [ ] 

## Rowe's notes / references mentioned

```

### Reading note

```markdown
---
type: reading
status: todo
---

# Lang — Algebra, ch. 5

## Summary


## Relevant to
- [[concept - galois groups]]
```

## Thesis map (MOC)

A single `thesis-notes/00 thesis map.md` links out to every concept/proof note relevant to the thesis, organized roughly by how the chapters will eventually be structured. Over time this becomes the thesis outline for free, and makes gaps visible (a linked-but-empty concept note is a visible TODO).

```markdown
---
type: concept
---

# Thesis map — Galois groups & cubic reciprocity

## Background
- [[concept - galois groups]]
- [[concept - field extensions]]

## Core
- [[concept - cubic reciprocity]]
- [[proof - eisenstein criterion]]

## Open / to research
- 
```

## Workflow in practice

1. **Lecture happens** → dated note in `coursework-notes/<course>/`.
2. **Durable material gets split out** — if something in a lecture note deserves to be a lasting reference (a theorem you'll cite again), split it into its own `concept -` note and link back to it from the lecture note.
3. **Homework scratch work** lives in its own dated/numbered note, separate from the actual submission file in `coursework/`.
4. **Thesis material** only ever goes into undated `concept -` / `proof -` notes linked from the thesis map — no "thesis journal," since that becomes unsearchable clutter within a semester.
5. **Advisor meetings** get a dated note with action items as checkboxes, linked from whichever concept notes they touched on.