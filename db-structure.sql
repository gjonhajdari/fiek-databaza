create database if not exists `application`;

use `application`;

-- student table
create table if not exists `application`.`student`(
  student_id int not null auto_increment,
  first_name nvarchar(50) not null,
  last_name nvarchar(50) not null,
  gender char(1) not null,
  birthdate date not null,
  marriage_status nvarchar(8) not null,
  phone_number nvarchar(20) not null,
  email_address nvarchar(320) not null,
  username nvarchar(32) not null,
  password char(64) not null,
  profile_picture nvarchar(100) null,
  hobbies nvarchar(300),
  books_movies_music text,
  description text,
  primary key (student_id)
);

-- skill table
create table if not exists `application`.`skill`(
  skill_id int not null auto_increment,
  student_id int not null,
  skill_name nvarchar(50) not null,
  primary key (skill_id),
  foreign key (student_id) references student(student_id) on delete cascade
);

-- education table
create table if not exists `application`.`education`(
  education_id int not null auto_increment,
  student_id int not null,
  institution_name nvarchar(30) not null,
  field_of_study nvarchar(50) not null,
  start_date year not null,
  end_date year,
  diploma_file nvarchar(100),
  degree nvarchar(100),
  study_area nvarchar(50),
  mentor nvarchar(300),
  primary key (education_id),
  foreign key (student_id) references student(student_id) on delete cascade
);

-- project table
create table if not exists `application`.`project`(
  project_id int not null auto_increment,
  student_id int not null,
  project_name nvarchar(100) not null,
  start_date date,
  end_date date,
  institution_name nvarchar(320) not null,
  location nvarchar(100) not null,
  description text not null,
  role nvarchar(100) not null,
  web_page nvarchar(300),
  primary key (project_id),
  foreign key (student_id) references student(student_id) on delete cascade
);

-- experience table
create table if not exists `application`.`experience`(
  experience_id int not null auto_increment,
  student_id int not null,
  title nvarchar(100) not null,
  company_name nvarchar(100) not null,
  location nvarchar(50) not null,
  start_date date,
  end_date date,
  additional_info text,
  primary key (experience_id),
  foreign key (student_id) references student(student_id) on delete cascade
);

-- company table
create table if not exists `application`.`company`(
  company_id int not null auto_increment,
  company_name nvarchar(100) not null,
  logo nvarchar(200) not null,
  description text not null,
  email_address nvarchar(320) not null,
  web_page nvarchar(300),
  employee_count int not null,
  company_type nvarchar(200) not null,
  established_year year not null,
  map_location nvarchar(320),
  primary key (company_id)
);

-- address table
create table if not exists `application`.`address`(
  address_id int not null auto_increment,
  student_id int,
  company_id int,
  street_name nvarchar(200) not null,
  city nvarchar(200) not null,
  country nvarchar(200) not null,
  zip_code nvarchar(20) not null,
  primary key (address_id),
  foreign key (student_id) references student(student_id) on delete cascade,
  foreign key (company_id) references company(company_id) on delete cascade
);

-- post table
create table if not exists `application`.`post`(
  post_id int not null auto_increment,
  company_id int not null,
  title nvarchar(100) not null,
  description text not null,
  required_skills text not null,
  desired_skills text not null,
  job_type nvarchar(20) not null,
  location nvarchar(50) not null,
  posted_at datetime not null default current_timestamp,
  application_deadline date not null,
  like_count int not null default 0,
  primary key (post_id),
  foreign key (company_id) references company(company_id) on delete cascade
);

-- comment table
create table if not exists `application`.`comment`(
  comment_id int not null auto_increment,
  post_id int not null,
  student_id int not null,
  content text not null,
  commented_at datetime not null default current_timestamp,
  like_count int not null default 0,
  primary key (comment_id),
  foreign key (post_id) references post(post_id) on delete cascade,
  foreign key (student_id) references student(student_id) on delete cascade
);

-- repost table
create table if not exists `application`.`repost`(
  repost_id int not null auto_increment,
  post_id int not null,
  student_id int not null,
  content text,
  reposted_at datetime not null default current_timestamp,
  like_count int not null default 0,
  primary key (repost_id),
  foreign key (post_id) references post(post_id)on delete cascade,
  foreign key (student_id) references student(student_id) on delete cascade
);

-- like table
create table if not exists `application`.`like`(
  like_id int not null auto_increment,
  student_id int,
  post_id int,
  repost_id int,
  comment_id int,
  liked_at datetime not null default current_timestamp,
  primary key (like_id),
  foreign key (student_id) references student(student_id) on delete cascade,
  foreign key (post_id) references post(post_id) on delete cascade,
  foreign key (repost_id) references repost(repost_id) on delete cascade,
  foreign key (comment_id) references comment(comment_id) on delete cascade
);

-- volunteering table
create table if not exists `application`.`volunteering`(
  volunteering_id int not null auto_increment,
  student_id int not null,
  position nvarchar(50) not null,
  company_name nvarchar(100) not null,
  start_date date not null,
  end_date date,
  primary key (volunteering_id),
  foreign key (student_id) references student(student_id) on delete cascade
);

-- saved post table
create table if not exists `application`.`saved_post`(
  saved_id int not null auto_increment,
  post_id int not null,
  student_id int not null,
  primary key (saved_id),
  foreign key (post_id) references post(post_id) on delete cascade,
  foreign key (student_id) references student(student_id) on delete cascade
);

-- applied table
create table if not exists `application`.`applied`(
  applied_id int not null auto_increment,
  student_id int not null,
  post_id int not null,
  resume nvarchar(100),
  applied_at datetime not null default current_timestamp,
  primary key (applied_id),
  foreign key (student_id) references student(student_id) on delete cascade,
  foreign key (post_id) references post(post_id) on delete cascade
);

-- language table
create table if not exists `application`.`language`(
  language_id int not null auto_increment,
  student_id int not null,
  language text not null,
  primary key (language_id),
  foreign key (student_id) references student(student_id) on delete cascade
);