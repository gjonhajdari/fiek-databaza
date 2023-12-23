-- Function for counting the total experience in years of a student
DELIMITER //

CREATE FUNCTION `application`.`CalculateExperience`(studentId INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE totalExperienceMonths INT;
    DECLARE totalYears INT;

    -- Calculate the total months of experience
    SELECT SUM(IFNULL(TIMESTAMPDIFF(MONTH, start_date, IFNULL(end_date, NOW())), 0))
    INTO totalExperienceMonths
    FROM experience
    WHERE student_id = studentId;

    -- Convert months to years
    SET totalYears = FLOOR(totalExperienceMonths / 12);

    RETURN totalYears;
END //

DELIMITER ;

-- Using the function
-- SELECT `application`.`CalculateExperience`(4) as total_experience;