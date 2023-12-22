use application;

-- 1.
-- Listoni të gjithë studentët që janë nga qyteti i Prishtinës të cilët nuk kanë të regjistruar asnjë projekt.
SELECT s.* FROM student s
LEFT JOIN applied a ON a.student_id = s.student_id
WHERE s.address LIKE "%Prishtina%"
AND a.student_id IS NULL;


-- 2.
-- Cilët studentë (numrat unik, emrat dhe mbiemrat e tyre) dje dhe sot kanë komentuar dhe kanë shpërndarë (share) ndonjë pozitë?
SELECT s.student_id, s.first_name, s.last_name
FROM student s
JOIN comment c ON s.student_id = c.student_id
JOIN repost r ON s.student_id = r.student_id
WHERE
  (DATE(c.commented_at) = CURDATE() OR DATE(c.commented_at) = CURDATE() - INTERVAL 1 DAY)
  AND
  (DATE(r.reposted_at) = CURDATE() OR DATE(r.reposted_at) = CURDATE() - INTERVAL 1 DAY);

select * from application.`student`;


-- 3.
-- Paraqitni të gjitha pozitat që janë publikuar këtë muaj në qytetin e Prishtinës dhe për të cilat pozita nuk ka asnjë studentë që ka aplikuar.
SELECT p.* FROM post p
LEFT JOIN applied a ON a.post_id = p.post_id
WHERE p.location = "Prishtinë"
AND MONTH(p.posted_at) = MONTH(NOW())
AND YEAR(p.posted_at) = YEAR(NOW())
AND a.student_id IS NULL;


-- 4.
-- Listoni studentët të cilët dje kanë aplikuar në dy ose më shumë pozita ndërsa sot nuk kanë aplikuar në asnjë pozitë.
SELECT s.*
FROM student s
LEFT JOIN (
    SELECT student_id
    FROM applied
    WHERE DATE(applied_at) = CURDATE()
) applications_today ON s.student_id = applications_today.student_id
LEFT JOIN (
    SELECT student_id
    FROM applied
    WHERE DATE(applied_at) = CURDATE() - INTERVAL 1 DAY
    GROUP BY student_id
    HAVING COUNT(*) >= 2
) applications_yesterday ON s.student_id = applications_yesterday.student_id
WHERE applications_yesterday.student_id IS NOT NULL
  AND applications_today.student_id IS NULL;