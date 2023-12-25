-- Extra data to match the requirements of some of the queries

SET @currentDateTime = DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i');
SET @yesterdayDateTime = DATE_FORMAT(NOW() - INTERVAL 1 DAY, '%Y-%m-%d %H:%i');
SET @randomDate = DATE_FORMAT(NOW() - INTERVAL FLOOR(RAND() * 60) DAY, '%Y-%m-%d %H:%i');


insert into `application`.`post`(company_id, title, description, required_skills, desired_skills, job_type, location, posted_at, application_deadline, like_count)
values
(1, "Software Developer", "We are seeking a skilled Software Developer to join our dynamic team. The ideal candidate will have a strong background in software development and be proficient in multiple programming languages.", "Proficiency in Java and Python, Experience with web development (HTML, CSS, JavaScript), Knowledge of database systems (SQL, MongoDB)", "Familiarity with cloud computing platforms (AWS, Azure), Mobile app development experience (iOS, Android)", "Full-time", "Prishtinë", @yesterdayDateTime, "2024-03-31", 684),
(1, "New Software Developer", "Exciting opportunity for a Software Developer to join our team.", "Proficiency in Java and Python, Experience with web development (HTML, CSS, JavaScript), Knowledge of database systems (SQL, MongoDB)", "Familiarity with cloud computing platforms (AWS, Azure), Mobile app development experience (iOS, Android)", "Full-time", "Prishtinë", @yesterdayDateTime, "2024-03-25", 100),
(3, "Marketing Coordinator", "We are looking for a detail-oriented and creative Marketing Coordinator to support our marketing team. The ideal candidate will have experience in social media management, content creation, and event coordination.", "Social media management, Content creation (copywriting, graphic design), Event coordination", "Familiarity with marketing analytics tools, Experience with email marketing campaigns", "Part-time", "Ferizaj", @currentDateTime, "2024-04-30", 237),
(7, "Data Scientist", "We are seeking a talented Data Scientist to analyze and interpret complex data sets. The ideal candidate should have a strong background in statistical analysis, machine learning, and data visualization.", "Proficiency in programming languages such as Python or R, Statistical analysis and hypothesis testing, Machine learning techniques", "Experience with big data technologies (Hadoop, Spark), Knowledge of natural language processing (NLP)", "Full-time", "Prishtinë", @currentDateTime, "2024-06-10", 811),
(6, "Customer Support Specialist", "We are looking for a Customer Support Specialist to assist customers with product-related inquiries and provide exceptional service. The ideal candidate should have strong communication skills and a customer-centric approach.", "Excellent verbal and written communication, Problem-solving skills, Patience and empathy", "Experience with helpdesk software, Knowledge of the product or industry", "Full-time", "Prishtinë", @randomDate, "2024-08-05", 492),
(4, "Title", "Desc", "Req", "Desired", "Full-time", "Prishtinë", @randomDate, "2024-02-20", 5),
(7, "Title 2", "Desc", "Req", "Desired", "Full-time", "Prishtinë", @randomDate, "2024-01-05", 76);


insert into `application`.`comment`(post_id, student_id, content, commented_at, like_count)
values
(11, 5, "Test 1", @currentDateTime, 2),
(12, 5, "Test 2", @currentDateTime, 3),
(16, 3, "Test 3", @yesterdayDateTime, 0),
(14, 3, "Test 4", @yesterdayDateTime, 221);


insert into `application`.`repost`(post_id, student_id, content, reposted_at, like_count)
values
(11, 5, null, @currentDateTime, 3),
(11, 5, null, @currentDateTime, 0),
(12, 3, null, @yesterdayDateTime, 0),
(12, 3, null, @yesterdayDateTime, 0);


insert into `application`.`applied`(student_id, post_id, resume, applied_at)
values
(2, 15, "resume_1.pdf", @yesterdayDateTime),
(2, 16, "resume_1.pdf", @yesterdayDateTime);


insert into `application`.`project`(student_id, project_name, start_date, end_date, institution_name, location, description, role, web_page)
values
(2, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(2, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(2, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(2, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(3, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(3, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(3, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(3, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(5, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(5, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(5, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(6, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(6, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(6, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(6, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(6, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com"),
(6, "Title", "2022-03-01", "2022-06-30", "Institution", "Prishtina, Kosovo", "Description",  "Role", "www.website.com");