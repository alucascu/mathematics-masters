<%*
const domain = await tp.system.prompt("Domain folder (e.g. thesis-notes, coursework-notes/real-analysis)");
const title = await tp.system.prompt("Proof title (e.g. eisenstein criterion)");
await tp.file.rename(`proof - ${title}`);
await tp.file.move(`${domain}/${tp.file.title}`);
-%>
---
type: proof
status: needs-review
---

# <% title.charAt(0).toUpperCase() + title.slice(1) %>

## Statement


## Proof


## Used in
- [[]]
