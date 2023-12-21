-- Trigger that checks if the deadline for a post has passed when applying
DELIMITER //

CREATE TRIGGER `application`.`check_application_deadline`
BEFORE INSERT ON `application`.`applied`
FOR EACH ROW
BEGIN
    DECLARE deadline_passed BOOLEAN;

    -- Check if the application deadline has passed
    SELECT TRUE INTO deadline_passed
    FROM `application`.`post`
    WHERE post_id = NEW.post_id
    AND application_deadline < DATE(NEW.applied_at);

    -- If the deadline has passed, raise an error
    IF deadline_passed THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Application deadline has passed. Cannot apply.';
    END IF;
END;
//

DELIMITER ;


-- Trigger for updating like_count of the respective table when a new like is inserted
DELIMITER //

CREATE TRIGGER `application`.`increment_like_count`
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


-- Trigger for updating like_count of the respective table when a like is deleted
DELIMITER //

CREATE TRIGGER `application`.`decrement_like_count`
AFTER DELETE ON `application`.`like`
FOR EACH ROW
BEGIN
    IF OLD.post_id IS NOT NULL THEN
        -- Decrement like_count for a post
        UPDATE `application`.`post`
        SET like_count = like_count - 1
        WHERE post_id = OLD.post_id;
    ELSEIF OLD.repost_id IS NOT NULL THEN
        -- Decrement like_count for a repost
        UPDATE `application`.`repost`
        SET like_count = like_count - 1
        WHERE repost_id = OLD.repost_id;
    ELSEIF OLD.comment_id IS NOT NULL THEN
        -- Decrement like_count for a comment
        UPDATE `application`.`comment`
        SET like_count = like_count - 1
        WHERE comment_id = OLD.comment_id;
    END IF;
END;
//

DELIMITER ;