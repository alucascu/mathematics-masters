<%*
const course = await tp.system.prompt("Course slug (e.g. topology)");
const term = await tp.system.prompt("Term (e.g. fall-2026)");
const professor = await tp.system.prompt("Professor");
await tp.file.rename(`00 course info`);
await tp.file.move(`coursework-notes/${course}/${tp.file.title}`);
-%>
---
type: course
course: <% course %>
term: <% term %>
professor: <% professor %>
credits:
number:
status: in-progress
---

# <% course.charAt(0).toUpperCase() + course.slice(1) %>

## Logistics
- Meets: 
- Location: 
- Office hours: 

## Materials
- Textbook: 
- Syllabus: [[]]

## Grading

## Lecture notes
- [[coursework-notes/<% course %>|folder]]

## Homework
- 

## Related concept notes
- [[]]
