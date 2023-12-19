1_CalculateTotalVolunteerHours:
CREATE FUNCTION CalculateTotalVolunteerHours(studentID INT)
RETURNS INT
BEGIN
    DECLARE totalHours INT;
    SELECT SUM(HoursWorked)
    INTO totalHours
    FROM VOLUNTEERING
    WHERE VOLUNTEERING.StudentID = studentID;
    RETURN totalHours;
END;
