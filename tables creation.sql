CREATE TABLE groups (
	group_id SERIAL PRIMARY KEY,
	name CHAR(20) NOT NULL
);

CREATE TABLE students (
	student_id SERIAL PRIMARY KEY,
	group_id int NOT NULL,
	first_name CHAR(20) NOT NULL,
	last_name CHAR(20) NOT NULL,
	FOREIGN KEY (group_id) REFERENCES groups
);

CREATE TABLE courses (
	course_id SERIAL PRIMARY KEY,
	name CHAR(20) NOT NULL,
	description CHAR(50)
);

CREATE TABLE courses_students (
	course_id int NOT NULL,
	student_id int NOT NULL,
	PRIMARY KEY (course_id, student_id),
	FOREIGN KEY (course_id) REFERENCES courses,
	FOREIGN KEY (student_id) REFERENCES students
);
 