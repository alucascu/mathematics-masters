<%*
const course = await tp.system.prompt("Course (e.g. topology, real-analysis)");
const topic = await tp.system.prompt("Topic");
await tp.file.rename(`${tp.date.now("YYYY-MM-DD")} ${topic}`);
await tp.file.move(`coursework-notes/${course}/${tp.file.title}`);
-%>
---
type: lecture
course: <% course %>
date: <% tp.date.now("YYYY-MM-DD") %>
---

# <% topic %>

## Key definitions


## Theorems


## Open questions
- 

## Links
- Builds on: [[]]
