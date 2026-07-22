<%*
const author = await tp.system.prompt("Author-year (e.g. lang-2002)");
const title = await tp.system.prompt("Short title (e.g. algebra ch5)");
await tp.file.rename(`${author} - ${title}`);
await tp.file.move(`reading/${tp.file.title}`);
-%>
---
type: reading
status: todo
---

# <% title %>

## Summary


## Relevant to
- [[]]
