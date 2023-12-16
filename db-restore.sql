-- clearing all the table fields
truncate table if exists application.student;
truncate table if exists application.education;
truncate table if exists application.project;
truncate table if exists application.experience;
truncate table if exists application.company;
truncate table if exists application.post;
truncate table if exists application.comment;
truncate table if exists application.repost;
truncate table if exists application.like;
truncate table if exists application.volunteering;
truncate table if exists application.language;
truncate table if exists application.saved_post;

-- deleting the tables
drop table if exists application.student;
drop table if exists application.education;
drop table if exists application.project;
drop table if exists application.experience;
drop table if exists application.company;
drop table if exists application.post;
drop table if exists application.comment;
drop table if exists application.repost;
drop table if exists application.like;
drop table if exists application.volunteering;
drop table if exists application.language;
drop table if exists application.saved_post;

-- deleting the entire database
drop database if exists application;