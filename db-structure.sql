create database if not exists `application`;

use `application`;

-- student table
create table if not exists `application`.`student` (
  student_id int not null,
  first_name nvarchar(50) not null,
  last_name nvarchar(50) not null,
  gender char(1) not null,
  birthdate date not null,
  marriage_status varchar(8) not null,
  address nvarchar(100) not null,
  phone_number varchar(20) not null,
  email_address varchar(320) not null,
  username varchar(32) not null,
  password char(64) not null,
  profile_picture varchar(100) null,
  skills varchar(300) null,
  hobbies varchar(300) null,
  books_movies_music varchar(300) null,
  description varchar(300) null,
  primary key (student_id)
);

-- education table
create table if not exists `application`.`education` (
  education_id int not null,
  student_id int not null,
  institution nvarchar(30) not null,
  field_of_study nvarchar(50) not null,
  start_date date not null,
  end_date date null,
  diploma_file varchar(100) null,
  degree varchar(100) null,
  study_area varchar(50) null,
  mentor nvarchar(300) null,
  primary key (education_id),
  foreign key (student_id) references student(student_id)
);

-- project table
create table if not exists `application`.`project` (
  project_id int not null,
  project_name nvarchar(100) not null,
  start_date date,
  end_date date,
  institution nvarchar(50) not null,
  location nvarchar(50) not null,
  description nvarchar(300) not null,
  role nvarchar(30) not null,
  web_page nvarchar(300) null,
  primary key (project_id)
);

-- experience table
create table if not exists `application`.`experience` (
  experience_id int not null,
  student_id int not null,
  title nvarchar(100) not null,
  company_name nvarchar(100) not null,
  location nvarchar(50) not null,
  start_date date,
  end_date date,
  additional_info nvarchar(300) null
);