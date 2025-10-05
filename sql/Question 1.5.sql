USE rsvp_db;

-- Student table
SELECT studentId, name, age, department
FROM student
ORDER BY studentId;

-- Course table
SELECT courseID, name, credits
FROM course
ORDER BY courseID;

-- Enrollment table
SELECT eID, sID, cID, grade
FROM enrollment
ORDER BY eID;
