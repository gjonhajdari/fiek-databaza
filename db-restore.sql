-- clearing all the table fields
truncate table `application`.`student`;
truncate table `application`.`skill`;
truncate table `application`.`education`;
truncate table `application`.`project`;
truncate table `application`.`experience`;
truncate table `application`.`company`;
truncate table `application`.`address`;
truncate table `application`.`post`;
truncate table `application`.`comment`;
truncate table `application`.`repost`;
truncate table `application`.`like`;
truncate table `application`.`volunteering`;
truncate table `application`.`saved_post`;
truncate table `application`.`applied`;
truncate table `application`.`language`;

-- deleting the tables
drop table `application`.`student`;
drop table `application`.`skill`;
drop table `application`.`education`;
drop table `application`.`project`;
drop table `application`.`experience`;
drop table `application`.`company`;
drop table `application`.`address`;
drop table `application`.`post`;
drop table `application`.`comment`;
drop table `application`.`repost`;
drop table `application`.`like`;
drop table `application`.`volunteering`;
drop table `application`.`saved_post`;
drop table `application`.`applied`;
drop table `application`.`language`;

-- deleting the triggers
drop trigger if exists `application`.`check_application_deadline`;
drop trigger if exists `application`.`check_comment_deadline`;
drop trigger if exists `application`.`check_repost_deadline`;
drop trigger if exists `application`.`check_like_deadline`;
drop trigger if exists `application`.`increment_like_count`;
drop trigger if exists `application`.`decrement_like_count`;

-- deleting the stored procedures
drop procedure if exists `application`.`GetStudentDetails`;
drop procedure if exists `application`.`GetPostsByCompany`;

-- deleting the functions
drop function if exists `application`.`CalculateExperience`;

-- deleting the views
drop view if exists `application`.`latest_posts`;
drop view if exists `application`.`student_with_skills`;

-- deleting the entire database
drop database `application`;