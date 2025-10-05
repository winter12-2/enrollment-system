USE rsvp_db;

-- Student table (you'll see names here)
SELECT studentId, name, age, department
FROM student
ORDER BY studentId;

-- Course table (course names here)
SELECT courseID, name, credits
FROM course
ORDER BY courseID;

-- Enrollment table (IDs + grade)
SELECT eID, sID, cID, grade
FROM enrollment
ORDER BY eID;
