SELECT group_id, COUNT(*) count FROM students
	GROUP BY group_id
	HAVING COUNT(*) < 10;

DELETE FROM courses_students
WHERE student_id = 
	(SELECT student_id FROM students 
	WHERE group_id =
		(SELECT group_id FROM groups
		WHERE name = 'SR-01')); 

DELETE FROM students 
WHERE group_id =
	(SELECT group_id FROM groups 
	WHERE name = 'SR-01'); 
	
SELECT co.name, st.first_name, st.last_name
FROM courses AS co
INNER JOIN courses_students AS cost
	ON co.course_id = junc.course_id
INNER JOIN students AS st
	ON st.student_id = junc.student_id;
	 