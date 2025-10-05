-- 1.1 student
CREATE TABLE student (
  studentId   INT PRIMARY KEY,
  name        VARCHAR(100) NOT NULL,
  age         INT CHECK (age >= 0),
  department  VARCHAR(100)
);

-- 1.2 course
CREATE TABLE course (
  courseID  INT PRIMARY KEY,
  name      VARCHAR(100) NOT NULL,
  credits   INT NOT NULL CHECK (credits > 0)
);

USE rsvp_db;

-- Make parent PKs UNSIGNED (and auto-increment if you want)
ALTER TABLE student
  MODIFY studentId INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE course
  MODIFY courseID INT UNSIGNED NOT NULL AUTO_INCREMENT;


-- 1.3 enrollment (FKs)
DROP TABLE IF EXISTS enrollment;

CREATE TABLE enrollment (
  eID   INT UNSIGNED NOT NULL AUTO_INCREMENT,
  sID   INT UNSIGNED NOT NULL,
  cID   INT UNSIGNED NOT NULL,
  grade VARCHAR(3),
  PRIMARY KEY (eID),
  KEY idx_enr_sid (sID),
  KEY idx_enr_cid (cID),
  CONSTRAINT fk_enr_student
    FOREIGN KEY (sID) REFERENCES student(studentId)
      ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_enr_course
    FOREIGN KEY (cID) REFERENCES course(courseID)
      ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


