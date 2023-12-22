-- View that shows the most recent job postings
CREATE VIEW `application`.`latest_posts` AS
SELECT
    p.post_id,
    p.company_id,
    c.company_name,
    p.title,
    p.description,
    p.required_skills,
    p.desired_skills,
    p.job_type,
    p.location,
    p.posted_at,
    p.application_deadline,
    p.like_count
FROM
    post p
INNER JOIN
    company c ON p.company_id = c.company_id
WHERE
    p.application_deadline >= CURDATE()
ORDER BY
    p.posted_at DESC;

-- View that shows students and a list of their registered skills
CREATE VIEW `application`.`student_with_skills` AS
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    s.username,
    s.profile_picture,
    GROUP_CONCAT(skill.skill_name ORDER BY skill.skill_name) AS skills
FROM
    student s
LEFT JOIN
    skill ON s.student_id = skill.student_id
GROUP BY
    s.student_id;
