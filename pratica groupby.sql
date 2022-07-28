--questão 1
SELECT COUNT(experiences."endDate") AS currentExperiences
FROM experiences;
--questão 2
SELECT educations."userId" AS id,
    COUNT(educations.id) AS educations
FROM educations
GROUP BY educations."userId";
--questão 3
SELECT users.name AS writer,
    COUNT(testimonials.id) AS "testimonialCount"
FROM users
    JOIN testimonials ON testimonials."writerId"=users.id
WHERE users.id=435
GROUP BY users.name; 
--questão 4
SELECT MAX(jobs.salary) AS "maximumSalary",
    roles.name AS "role"
FROM jobs
    JOIN roles ON jobs."roleId"=roles.id
WHERE jobs.active = TRUE
GROUP BY "role"
ORDER BY "maximumSalary" ASC;
--desafio
SELECT schools.name AS school,
    courses.name AS course,
    COUNT(educations."userId") AS "studentsCount",
    educations.status AS "role"
FROM educations
    JOIN schools ON educations."schoolId" = schools.id
    JOIN courses ON educations."courseId" = courses.id
WHERE educations.status = 'ongoing' 
    OR educations.status = 'finished'
GROUP BY school, course , "role"
ORDER BY "studentsCount" DESC
LIMIT 3;
