use application;

-- 1.
-- Listoni të gjithë studentët që janë nga qyteti i Prishtinës të cilët nuk kanë të regjistruar asnjë projekt.
SELECT s.*
FROM student s
LEFT JOIN
  applied a ON a.student_id = s.student_id
JOIN
  address addr ON s.student_id = addr.student_id
WHERE addr.city = "Prishtina"
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
  (DATE(r.reposted_at) = CURDATE() OR DATE(r.reposted_at) = CURDATE() - INTERVAL 1 DAY)
GROUP BY s.student_id;


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


-- 4.
-- Listoni top 5 kompanitë/institucionet me numër maksimal të pozitave të shpallura në dy muajt e fundit. Lista të paraqes të dhënat e kompanive/institucioneve (emrin, qytetin dhe email-in) duke përfshirë edhe numrin e pozitave të shpallura.
SELECT
  c.company_id,
  c.company_name,
  a.city,
  c.email_address,
  COUNT(p.post_id) AS post_count
FROM
  company c
LEFT JOIN
  post p ON c.company_id = p.company_id
LEFT JOIN
  address a ON c.company_id = a.company_id
WHERE
  p.posted_at >= CURDATE() - INTERVAL 2 MONTH
GROUP BY c.company_id, c.company_name, a.city, c.email_address
ORDER BY post_count DESC
LIMIT 5;


-- 6.
-- Paraqitni top 3 pozitat në të cilat kanë aplikuar numër maksimal i studentëve (më së shumti) të cilët kanë së paku katër projekte të regjistruara në bazën e të dhënave. Lista të përmbaj këto të dhëna:
-- - titulli i pozitës
-- - emri i kompanisë që ka shpallur pozitën
-- - numri i studentëve që kanë aplikuar
-- - numri i pëlqimeve
-- - numri i komenteve
-- - numri i shpërndarjeve
-- - data e publikimit të pozitës
SELECT
  p.title,
  c.company_name,
  COUNT(DISTINCT a.student_id) AS applicant_count,
  p.like_count,
  COUNT(DISTINCT co.comment_id) AS comment_count,
  COUNT(DISTINCT r.repost_id) AS repost_count,
  p.posted_at
FROM post p
JOIN company c ON p.company_id = c.company_id
JOIN applied a ON p.post_id = a.post_id
LEFT JOIN comment co ON p.post_id = co.post_id
LEFT JOIN repost r ON p.post_id = r.post_id
WHERE
  a.student_id IN (
    SELECT s.student_id
    FROM student s
    JOIN project pr ON s.student_id = pr.student_id
    GROUP BY s.student_id
    HAVING COUNT(pr.project_id) >= 4
  )
GROUP BY p.post_id
ORDER BY applicant_count DESC
LIMIT 3;