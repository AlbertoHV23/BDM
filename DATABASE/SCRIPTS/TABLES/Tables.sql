CREATE DATABASE IF NOT EXISTS changetheworld;
USE changetheworld;

CREATE TABLE IF NOT EXISTS Categories (
id_categorie INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the category.',
name_categorie VARCHAR(255) COMMENT'This field represents the name of the category.',
PRIMARY KEY(id_categorie)) COMMENT'This table represents the data for the course categories.';

CREATE TABLE IF NOT EXISTS Users (
id_user INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the user identifier.',
role_user VARCHAR(10) NOT NULL COMMENT'This field represents the user role.',
photo BLOB NULL COMMENT'This field represents the user photo.',
name_user VARCHAR(255) NOT NULL COMMENT'This field represents the username.',
last_name VARCHAR(255) NOT NULL COMMENT'This field represents the users last name.',
description_user TEXT NULL COMMENT'This field represents the description of the user, what is it? What does it work on? What does it like? Etc.',
email VARCHAR(255) NOT NULL COMMENT'This field represents the email with which the user enters the account.',
password_user VARCHAR(255) NOT NULL COMMENT'This field represents the password of the user account.',
registered_date DATE NOT NULL COMMENT'This field represents the day the user registered.',
date_of_last_change DATE NOT NULL COMMENT'This field represents the last change that was made to the users data.',
PRIMARY KEY(id_user)) COMMENT'This table represents the data for all teacher and student users.';

CREATE TABLE IF NOT EXISTS Schools(
id_school INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the created school.',
fk_user INT UNSIGNED NOT NULL COMMENT'This field represents who created the school.',
logo BLOB NOT NULL COMMENT'This field represents the school logo.',
name_school VARCHAR(255) NOT NULL UNIQUE COMMENT'This field represents the name of the school.',
number_of_courses INT NULL COMMENT'This field represents how many courses the school has.',
PRIMARY KEY(id_school),
FOREIGN KEY(fk_user) REFERENCES users(id_user)) COMMENT'This table represents data for schools that teachers can start.' ;

CREATE TABLE IF NOT EXISTS Courses(
id_course INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the course.',
fk_school INT UNSIGNED NOT NULL COMMENT'This field represents the school to which the course is linked.',
fk_categorie INT UNSIGNED NOT NULL COMMENT'This field represents the category to which the course is linked.',
fk_user INT UNSIGNED NOT NULL COMMENT'This field represents who created the course.',
logo BLOB NOT NULL COMMENT'This field represents the course logo.',
title VARCHAR(255) NOT NULL UNIQUE COMMENT'This field represents the title of the course.',
average_rating DECIMAL(1,1) NULL COMMENT'This field represents the average rating for the course.',
short_description TEXT NOT NULL COMMENT'This field represents a short description of the course.',
large_description TEXT NOT NULL COMMENT'This field represents a great description of the course in detail.',
number_comments INT NULL COMMENT'This field represents the number of comments for the course.',
cost DECIMAL NOT NULL COMMENT'This field represents how much the course costs.',
PRIMARY KEY(id_course),
FOREIGN KEY(fk_school) REFERENCES schools(id_school),
FOREIGN KEY(fk_categorie) REFERENCES categories(id_categorie),
FOREIGN KEY(fk_user) REFERENCES users(id_user)) COMMENT'This table represents the data of all the courses that exist on the website.' ;

CREATE TABLE IF NOT EXISTS Videos(
id_video INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the video.',
fk_course INT UNSIGNED NOT NULL COMMENT'This field represents which course it belongs to.',
title VARCHAR(255) NOT NULL COMMENT'This field represents the title of the video.',
short_description TEXT NOT NULL COMMENT'This field represents a short description of the video.',
content LONGBLOB NOT NULL COMMENT'This field represents the video.',
viewed BOOLEAN NOT NULL DEFAULT 0 COMMENT'This field represents whether the video has been viewed or not.',
PRIMARY KEY(id_video),
FOREIGN KEY(fk_course) REFERENCES courses(id_course))COMMENT'This table represents all the videos of the courses on the website.';

CREATE TABLE IF NOT EXISTS Notes(
id_note INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the video notes.',
fk_video INT UNSIGNED NOT NULL COMMENT'This field represents which video the note is from.',
fk_user INT UNSIGNED NOT NULL COMMENT'This field represents by whom the note was written.',
note TEXT NOT NULL COMMENT'This field represents the content of the note.',
PRIMARY KEY(id_note),
FOREIGN KEY(fk_video) REFERENCES videos(id_video),
FOREIGN KEY(fk_user) REFERENCES users(id_user)) COMMENT'This table represents all the notes made by users in the video.';

CREATE TABLE IF NOT EXISTS Files(
id_file INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the video file.',
fk_video INT UNSIGNED NOT NULL COMMENT'This field represents which video the file is from.',
name_file VARCHAR(255) NOT NULL COMMENT'This field represents the name of the file.',
content BLOB NOT NULL COMMENT'This field represents the content of the file.',
PRIMARY KEY(id_file),
FOREIGN KEY(fk_video) REFERENCES videos(id_video)) COMMENT'This table represents the files shared by the teacher in the video.';

CREATE TABLE IF NOT EXISTS Links(
id_file INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'',
fk_video INT UNSIGNED NOT NULL COMMENT'',
link VARCHAR(255) NOT NULL,
PRIMARY KEY(id_file),
FOREIGN KEY(fk_video) REFERENCES videos(id_video)) COMMENT'This table represents the links shared by the teacher in the video.';

CREATE TABLE IF NOT EXISTS Comments_courses(
id_comment_course INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the course comment.',
fk_course INT UNSIGNED NOT NULL COMMENT'This field represents which course the comment belongs to.',
fk_sender INT UNSIGNED NOT NULL COMMENT'This field represents who made the comment in the course.',
fk_addressee INT UNSIGNED NOT NULL COMMENT'This field represents who the comment was answered to on the course.',
message TEXT NOT NULL COMMENT'This field represents the content of the comment in the course.',
PRIMARY KEY(id_comment_course),
FOREIGN KEY(fk_course) REFERENCES courses(id_course),
FOREIGN KEY(fk_sender) REFERENCES Users(id_user),
FOREIGN KEY(fk_addressee) REFERENCES Users(id_user)) COMMENT'This table represents the comments shared by users on the course.';

CREATE TABLE IF NOT EXISTS Comments_videos(
id_comment_video INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the video comment.',
fk_video INT UNSIGNED NOT NULL COMMENT'This field represents which video the comment belongs to.',
fk_sender INT UNSIGNED NOT NULL COMMENT'This field represents who made the comment on the video.',
fk_addressee INT UNSIGNED NOT NULL COMMENT'This field represents who the comment of the video was answered to.',
message TEXT NOT NULL COMMENT'This field represents the content of the comment on the video.',
PRIMARY KEY(id_comment_video),
FOREIGN KEY(fk_video) REFERENCES videos(id_video),
FOREIGN KEY(fk_sender) REFERENCES Users(id_user),
FOREIGN KEY(fk_addressee) REFERENCES Users(id_user)) COMMENT'This table represents the comments shared by users on the video.';

CREATE TABLE IF NOT EXISTS Messages(
id_message INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the message.',
fk_sender INT UNSIGNED NOT NULL COMMENT'This field represents who sent the message.',
fk_addressee INT UNSIGNED NOT NULL COMMENT'This field represents who receives the message.',
message TEXT NOT NULL COMMENT'This field represents the content of the message.',
date_message DATE NOT NULL COMMENT'This field represents the day the message was sent.',
time_message TIME NOT NULL COMMENT'This field represents the time the message was sent.',
PRIMARY KEY(id_message),
FOREIGN KEY(fk_sender) REFERENCES Users(id_user),
FOREIGN KEY(fk_addressee) REFERENCES Users(id_user)) COMMENT'This table represents the messages made by users in private';

CREATE TABLE IF NOT EXISTS Ratings(
id_rating INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the grade identifier in the course.',
fk_user INT UNSIGNED NOT NULL COMMENT'This field represents who graded the course.',
fk_course INT UNSIGNED NOT NULL COMMENT'This field represents which course was graded.',
points DECIMAL(1,1) NOT NULL COMMENT'This field represents the rating that the user gave.',
PRIMARY KEY(id_rating),
FOREIGN KEY(fk_user) REFERENCES users(id_user),
FOREIGN KEY(fk_course) REFERENCES courses(id_course)) COMMENT'This table represents the grade of each user to the course.';

CREATE TABLE IF NOT EXISTS Sales(
id_sale INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the sale.',
fk_seller INT UNSIGNED NOT NULL COMMENT'This field represents the seller.',
fk_buyer INT UNSIGNED NOT NULL COMMENT'This field represents the buyer.',
fk_course INT UNSIGNED NOT NULL COMMENT'This field represents the product that was sold.',
PRIMARY KEY(id_sale),
FOREIGN KEY(fk_seller) REFERENCES users(id_user),
FOREIGN KEY(fk_buyer) REFERENCES users(id_user),
FOREIGN KEY(fk_course) REFERENCES courses(id_course)) COMMENT'This table represents the sales of each user.';

CREATE TABLE IF NOT EXISTS Purchases(
id_purchase INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT'This field represents the identifier of the sale.',
fk_buyer INT UNSIGNED NOT NULL COMMENT'This field represents the buyer.',
fk_course INT UNSIGNED NOT NULL COMMENT'This field represents the product that was purchased.',
PRIMARY KEY(id_purchase),
FOREIGN KEY(fk_buyer) REFERENCES users(id_user),
FOREIGN KEY(fk_course) REFERENCES courses(id_course)) COMMENT'This table represents the purchases of each user.';
