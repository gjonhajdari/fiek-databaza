-- stored procedure for getting student details with education and experience
DELIMITER //

CREATE PROCEDURE GetStudentDetails(IN studentId INT)
BEGIN
    SELECT
        s.student_id,
        s.first_name,
        s.last_name,
        e.education_id,
        e.institution_name,
        e.field_of_study,
        e.start_date,
        e.end_date,
        ex.experience_id,
        ex.title,
        ex.company_name,
        ex.start_date AS exp_start_date,
        ex.end_date AS exp_end_date
    FROM
        student s
    LEFT JOIN
        education e ON s.student_id = e.student_id
    LEFT JOIN
        experience ex ON s.student_id = ex.student_id
    WHERE
        s.student_id = studentId;
END //

DELIMITER ;

-- stored procedure for getting all job posts from a company
DELIMITER //

CREATE PROCEDURE GetPostsByCompany(IN companyId INT)
BEGIN
    SELECT * FROM post
    WHERE company_id = companyId;
END //

DELIMITER ;


-- testing the stored procedure
CALL GetStudentDetails(2);
CALL GetPostsByCompany(1);