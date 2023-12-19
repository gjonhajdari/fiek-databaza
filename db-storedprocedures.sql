1_AddNewLanguageToStudent:
CREATE PROCEDURE AddNewLanguageToStudent(IN studentID INT, IN languageName VARCHAR(255))
BEGIN
    INSERT INTO LANGUAGES (StudentID, Language)
    VALUES (studentID, languageName);
END;

2_CreateNewPost:
CREATE PROCEDURE CreateNewPost(IN studentID INT, IN message TEXT)
BEGIN
    INSERT INTO POST (StudentID, Message, PostDate)
    VALUES (studentID, message, NOW());
END;
