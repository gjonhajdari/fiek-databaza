-- clearing all the table fields
truncate table application.student;
truncate table application.education;
truncate table application.project;
truncate table application.experience;
truncate table application.company;
truncate table application.post;
truncate table application.comment;
truncate table application.repost;
truncate table application.like;
truncate table application.volunteering;
truncate table application.language;
truncate table application.saved_post;
truncate table application.professional_skills;

-- deleting the tables
drop table application.student;
drop table application.education;
drop table application.project;
drop table application.experience;
drop table application.company;
drop table application.post;
drop table application.comment;
drop table application.repost;
drop table application.like;
drop table application.volunteering;
drop table application.language;
drop table application.saved_post;
drop table application.professional_skills;

-- deleting the entire database
drop database application;