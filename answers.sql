
SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION COUNT_STUDENTS
(
    DepartmentID NUMBER
)
RETURN NUMBER
IS
    total_students NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO total_students
    FROM Student
    WHERE Student.DepartmentID = COUNT_STUDENTS.DepartmentID;

    RETURN total_students;
END;
/
