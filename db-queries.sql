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