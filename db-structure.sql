CREATE DATABASE IF NOT EXISTS application;

USE application;

-- student table
CREATE TABLE IF NOT EXISTS student (
  student_id INT NOT NULL,
  first_name NVARCHAR(50) NOT NULL,
  last_name NVARCHAR(50) NOT NULL,
  gender CHAR(1) NOT NULL,
  birthdate DATE NOT NULL,
  marriage_status VARCHAR(8) NOT NULL,
  address NVARCHAR(100) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  email_address VARCHAR(320) NOT NULL,
  username VARCHAR(32) NOT NULL,
  password CHAR(64) NOT NULL,
  profile_picture VARCHAR(100) NULL,
  skills VARCHAR(300) NULL,
  hobbies VARCHAR(300) NULL,
  books_movies_music VARCHAR(300) NULL,
  description VARCHAR(300) NULL,
  PRIMARY KEY (student_id)
);

-- education table
CREATE TABLE IF NOT EXISTS education (
  education_id INT NOT NULL,
  student_id INT NOT NULL,
  institution NVARCHAR(30) NOT NULL,
  field_of_study NVARCHAR(50) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NULL,
  diploma_file VARCHAR(100) NULL,
  degree VARCHAR(100) NULL,
  study_area VARCHAR(50) NULL,
  mentor NVARCHAR(300) NULL,
  PRIMARY KEY (education_id),
  FOREIGN KEY (student_id) REFERENCES student(student_id)
);

-- project table
CREATE TABLE IF NOT EXISTS project (
  project_id INT NOT NULL,
  project_name NVARCHAR(100) NOT NULL,
  start_date DATE,
  end_date DATE,
  institution NVARCHAR(50) NOT NULL,
  location NVARCHAR(50) NOT NULL,
  description NVARCHAR(300) NOT NULL,
  role NVARCHAR(30) NOT NULL,
  web_page NVARCHAR(300) NULL,
  PRIMARY KEY (project_id)
);