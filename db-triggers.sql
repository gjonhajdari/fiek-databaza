1_UpdateExperienceYearsOnInsert:
CREATE TRIGGER UpdateExperienceYearsOnInsert
AFTER INSERT ON EXPERIENCE
FOR EACH ROW
UPDATE STUDENT
SET TotalExperienceYears = TotalExperienceYears + NEW.YearsOfExperience
WHERE STUDENT.StudentID = NEW.StudentID;

2_PostLikesCounter:
CREATE TRIGGER PostLikesCounter
AFTER INSERT ON LIKES
FOR EACH ROW
UPDATE POST
SET LikeCount = LikeCount + 1
WHERE POST.PostID = NEW.PostID;