<%*
const domain = await tp.system.prompt("Domain folder (e.g. thesis-notes, coursework-notes/topology)");
const title = await tp.system.prompt("Concept title (e.g. galois groups)");
await tp.file.rename(`concept - ${title}`);
await tp.file.move(`${domain}/${tp.file.title}`);
-%>
---
type: concept
status: needs-review
---

# <% title.charAt(0).toUpperCase() + title.slice(1) %>

## Statement / definition


## Why it matters (for thesis)


## Related
- [[]]
