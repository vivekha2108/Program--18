SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION COUNT_STUDENTS(
    DepartmentID NUMBER
)
RETURN NUMBER
IS
    student_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO student_count
    FROM Student
    WHERE Student.DepartmentID = COUNT_STUDENTS.DepartmentID;

    RETURN student_count;
END;
/
