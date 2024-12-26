/*
Querie 1: list all job seekers who have applied to a job titled 'Developper' 

SELECT js.*
FROM job_seeker js
JOIN applications a ON js.seeker_id = a.seeker_id
JOIN job_postal jp ON a.job_id = jp.job_id
WHERE jp.job_title = 'Developper';*/

/*
Querie 2: Count the number of applications for each job.

SELECT jp.job_id, jp.job_title, COUNT(a.application_id) AS num_applications
FROM job_postal jp
LEFT JOIN applications a ON jp.job_id = a.job_id
GROUP BY jp.job_id, jp.job_title;*/

/*
Querie 3: List all job seekers who have not applied for any job yet

SELECT js.*
FROM job_seeker js
LEFT JOIN applications a ON js.seeker_id = a.seeker_id
WHERE a.application_id IS NULL;*/

/*
Querie 4: find the average age of job seekers who have applied for a job posted by an admin with ID 2.

SELECT AVG(js.age) AS avg_age
FROM job_seeker js
JOIN applications a ON js.seeker_id = a.seeker_id
JOIN job_postal jp ON a.job_id = jp.job_id
WHERE jp.admin_id = 2;*/

/*
Querie 5:  List all job seekers who applied for a job but haven't received any response yet.

SELECT js.*
FROM job_seeker js
JOIN applications a ON js.seeker_id = a.seeker_id
WHERE a.status='Pending...';*/

/*
Querie 6: shows salaries paid by every employer

SELECT e.employer_id, e.company_name, SUM(jp.salary) AS total_salary_paid
FROM employer e
JOIN job_postal jp ON e.employer_id = jp.employer_id
GROUP BY e.employer_id, e.company_name;*/


/*
Querie 7: List all job seekers with the number of applications they have submitted.

SELECT js.seeker_id, js.username, COUNT(a.application_id) AS num_applications
FROM job_seeker js
LEFT JOIN applications a ON js.seeker_id = a.seeker_id
GROUP BY js.seeker_id, js.username;*/

/*
Querie 8: showing all job seekers with their experiences

SELECT js.seeker_id, js.username, js.education, js.seeker_email, js.age, js.city, js.phone_number,
       exp.description, exp.projects, exp.position, exp.company_name
FROM job_seeker js
LEFT JOIN experience exp ON js.seeker_id = exp.seeker_id;*/














