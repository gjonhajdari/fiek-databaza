-- CREATE TRIGGER UpdateExperienceYearsOnInsert
-- AFTER INSERT ON EXPERIENCE
-- FOR EACH ROW
-- UPDATE STUDENT
-- SET TotalExperienceYears = TotalExperienceYears + NEW.YearsOfExperience
-- WHERE STUDENT.StudentID = NEW.StudentID;


-- Trigger for updating like_count of the respective table when a new like is inserted
DELIMITER //

CREATE TRIGGER application.update_like_count
AFTER INSERT ON `application`.`like`
FOR EACH ROW
BEGIN
    IF NEW.post_id IS NOT NULL THEN
        -- Update like_count for a post
        UPDATE `application`.`post`
        SET like_count = like_count + 1
        WHERE post_id = NEW.post_id;
    ELSEIF NEW.repost_id IS NOT NULL THEN
        -- Update like_count for a repost
        UPDATE `application`.`repost`
        SET like_count = like_count + 1
        WHERE repost_id = NEW.repost_id;
    ELSEIF NEW.comment_id IS NOT NULL THEN
        -- Update like_count for a comment
        UPDATE `application`.`comment`
        SET like_count = like_count + 1
        WHERE comment_id = NEW.comment_id;
    END IF;
END;
//

DELIMITER ;
