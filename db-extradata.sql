insert into `application`.`comment`(post_id, student_id, content, commented_at, like_count)
values
(1, 5, "Test 1", "2023-12-21 14:30", 2),
(2, 5, "Test 2", "2023-12-21 14:30", 3),
(6, 3, "Test 3", "2023-12-21 14:30", 0),
(8, 3, "Test", "2023-12-21 14:30", 221);

insert into `application`.`repost`(post_id, student_id, content, reposted_at, like_count)
values
(1, 5, null, "2023-12-20 11:45", 3),
(2, 5, null, "2023-12-20 14:20", 0),
(2, 3, null, "2023-12-20 14:20", 0),
(2, 3, null, "2023-12-20 14:20", 0);