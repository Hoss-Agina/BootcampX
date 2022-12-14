SELECT teachers.name AS teacher, cohorts.name as cohort, count(assistance_requests.*) as total_assistances FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP by teachers.name, cohorts.name
ORDER BY count(assistance_requests.*) DESC;