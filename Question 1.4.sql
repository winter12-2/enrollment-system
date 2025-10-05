USE rsvp_db;

-- 2 students
INSERT INTO student (name, age, department) VALUES
  ('Nico Lee', 20, 'Computer Science'),
  ('Lexi Bell',   21, 'Mathematics');

-- 2 courses
INSERT INTO course (name, credits) VALUES
  ('Database Systems', 3),
  ('Operating Systems', 3);

-- 2 enrollments
INSERT INTO enrollment (sID, cID, grade) VALUES
  ((SELECT studentId FROM student WHERE name='Nico Lee' LIMIT 1),
   (SELECT courseID  FROM course  WHERE name='Database Systems' LIMIT 1), 'A'),
  ((SELECT studentId FROM student WHERE name='Lexi Bell' LIMIT 1),
   (SELECT courseID  FROM course  WHERE name='Operating Systems' LIMIT 1), 'B+');



