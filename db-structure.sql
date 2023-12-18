create database if not exists `application`;

use `application`;

-- student table
create table if not exists `application`.`student` (
  student_id int not null auto_increment,
  first_name nvarchar(50) not null,
  last_name nvarchar(50) not null,
  gender char(1) not null,
  birthdate date not null,
  marriage_status nvarchar(8) not null,
  address nvarchar(100) not null,
  phone_number nvarchar(20) not null,
  email_address nvarchar(320) not null,
  username nvarchar(32) not null,
  password char(64) not null,
  profile_picture nvarchar(100) null,
  skills nvarchar(300),
  hobbies nvarchar(300),
  books_movies_music nvarchar(300),
  description nvarchar(300),
  primary key (student_id)
);

-- education table
create table if not exists `application`.`education` (
  education_id int not null,
  student_id int not null,
  institution nvarchar(30) not null,
  field_of_study nvarchar(50) not null,
  start_date date not null,
  end_date date,
  diploma_file nvarchar(100),
  degree nvarchar(100),
  study_area nvarchar(50),
  mentor nvarchar(300),
  primary key (education_id),
  foreign key (student_id) references student(student_id) on delete cascade
);

-- project table
create table if not exists `application`.`project` (
  project_id int not null,
  student_id int not null,
  project_name nvarchar(100) not null,
  start_date date,
  end_date date,
  institution nvarchar(50) not null,
  location nvarchar(50) not null,
  description nvarchar(300) not null,
  role nvarchar(30) not null,
  web_page nvarchar(300),
  primary key (project_id),
  foreign key (student_id) references student(student_id) on delete cascade
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
  additional_info nvarchar(300),
  primary key (experience_id),
  foreign key (student_id) references student(student_id) on delete cascade
);

-- company table
create table if not exists `application`.`company` (
  company_id int not null,
  company_name nvarchar(100) not null,
  logo nvarchar(200) not null,
  email_address nvarchar(320) not null,
  web_page nvarchar(300),
  employee_count int not null,
  company_type nvarchar(200) not null,
  established_year year not null,
  address nvarchar(100) not null,
  map_location nvarchar(320),
  primary key (company_id)
);

-- post table
create table if not exists `application`.`post` (
  post_id int not null,
  company_id int not null,
  title nvarchar(100) not null,
  description text not null,
  required_skills text not null,
  desired_skills text not null,
  location nvarchar(50) not null,
  posted_at datetime not null default current_timestamp,
  application_deadline date not null,
  primary key (post_id),
  foreign key (company_id) references company(company_id) on delete cascade
);

-- comment table
create table if not exists `application`.`comment` (
  comment_id int not null,
  post_id int not null,
  author_id int not null,
  content text not null,
  commented_at datetime not null default current_timestamp,
  like_count int not null default 0,
  primary key (comment_id),
  foreign key (post_id) references post(post_id), on delete cascade,
  foreign key (author_id) references student(student_id) on delete cascade
);

-- repost table
create table if not exists `application`.`repost` (
  repost_id int not null,
  post_id int not null,
  author_id int not null,
  content text,
  reposted_at datetime not null default current_timestamp,
  like_count int not null default 0,
  primary key (repost_id),
  foreign key (post_id) references post(post_id), on delete cascade,
  foreign key (author_id) references student(student_id) on delete cascade
);

-- like table
create table if not exists `application`.`repost` (
  like_id int not null,
  student_id int,
  post_id int,
  repost_id int,
  comment_id int, 
  liked_at datetime not null default current_timestamp,
  primary ket (like_id),
  foreign key (student_id) references student(student_id), on delete cascade,
  foreign key (post_id) references post(post_id), on delete cascade,
  foreign key (repost_id) references repost(repost_id), on delete cascade,
  foreign key (comment_id) references comment(comment_id), on delete cascade
);