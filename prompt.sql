-- Part 1a

SELECT 	C.TITLE, S.CLASSROOM, S.MEETING, S.BEGIN_TIME, S.END_TIME
FROM Courses C, Sections S, Professors P
WHERE P.SSN = '$prof_ssn' AND P.SSN = S.S_SSN AND S.S_CNUM = C.CNUM;

-- Part 1b
SELECT DISTINCT E.GRADE, C.TITLE, COUNT(GRADE) as 'Count'
FROM Courses C, Sections S, Enrollment E
WHERE C.CNUM = S.S_CNUM AND E.E_SNUM = S.SNUM
AND C.CNUM = '$course_id' AND S.SNUM = '$section_id' GROUP BY GRADE;

-- Part 2a

SELECT S.CLASSROOM, S.MEETING, S.BEGIN_TIME, S.END_TIME, COUNT(E.E_SNUM) as 'Count'
FROM Courses C, Enrollment E, Sections S
WHERE E.E_SNUM = S.SNUM
AND C.CNUM = S.S_CNUM
AND C.CNUM = '$course_id' GROUP BY SNUM;

-- Part 2b

SELECT C.TITLE, E.GRADE
FROM Enrollment E, Courses C, Sections S, Students T
WHERE  T.CWID = E.E_CWID AND E.E_SNUM = S.SNUM
AND S.S_CNUM = C.CNUM AND E.E_CWID =  '$stu_id'
