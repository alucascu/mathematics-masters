<%*
const course = await tp.system.prompt("Course (e.g. topology, real-analysis)");
const set = await tp.system.prompt("Problem set (e.g. hw03)");
await tp.file.rename(`${set} scratch`);
await tp.file.move(`coursework-notes/${course}/${tp.file.title}`);
-%>
---
type: homework
course: <% course %>
set: <% set %>
status: todo
---

# <% set.toUpperCase() %> scratch — <% course %>

## Problem 1
Approach: 


## Stuck points
- 

## Solution file
[[coursework/<% course %>/<% set %>/<% set %>.typ]]
