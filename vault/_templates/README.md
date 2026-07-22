# Templater setup

1. Install the **Templater** community plugin (Settings → Community plugins).
2. Put this whole `templates/` folder inside your vault, e.g. `vault/_templates/`.
3. In Templater's settings, set **Template folder location** to `_templates`.
4. Optional but recommended — bind each template to a hotkey via
   **Templater → Insert Templater template**, or set up folder templates so
   new notes created inside `coursework-notes/` default to `lecture.md`, etc.
   (Settings → Templater → Folder Templates).

## Files

| Template | Creates note in | Prompts for |
|---|---|---|
| `lecture.md` | `coursework-notes/<course>/` | course, topic |
| `homework.md` | `coursework-notes/<course>/` | course, problem set |
| `concept.md` | wherever you specify | domain folder, title |
| `proof.md` | wherever you specify | domain folder, title |
| `meeting.md` | `advisor-meetings/` | who with (defaults to rowe), topic |
| `reading.md` | `reading/` | author-year, short title |

All templates auto-rename and move the note on creation, so you can trigger
them from anywhere in the vault without navigating to the target folder
first.

Note: `tp.file.move` expects folder paths relative to the vault root
(`vault/`), matching the structure from the workflow doc — adjust the
literal paths in each template if your folder names differ.
