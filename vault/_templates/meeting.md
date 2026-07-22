<%*
const withWhom = await tp.system.prompt("Meeting with", "rowe");
const topic = await tp.system.prompt("Topic");
await tp.file.rename(`${tp.date.now("YYYY-MM-DD")} ${withWhom} - ${topic}`);
await tp.file.move(`advisor-meetings/${tp.file.title}`);
-%>
---
type: meeting
date: <% tp.date.now("YYYY-MM-DD") %>
with: <% withWhom %>
---

# Meeting — <% topic %>

## Discussed


## Action items
- [ ] 

## Notes / references mentioned

