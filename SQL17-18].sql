--1 

--CREATE PROC [InsertNewLecturer]
--@name nvarchar(50) ,
--@middlename nvarchar(50),
--@lastName nvarchar(50) = null,
--@description nvarchar(100)
--AS 
--BEGIN
--INSERT INTO [Lecturer] ([Name] , [MiddleName] , [LastName] ,[Description])
--VALUES (@name , @middlename , @lastName ,@description);
--END;
----GO
--CREATE PROC [InsertNewLesson]
--@name nvarchar(50) ,
--@description nvarchar(100)
--AS 
--BEGIN
--INSERT INTO [LessonObject] ([Name] , [Description])
--VALUES (@name ,@description);
--END;
--GO
--EXEC [InsertNewLecturer] @name = 'Александр' ,@middlename='Козбеков' , @lastName='Петрович' , @description ='Учитель математики'
--EXEC [InsertNewLesson] @name = 'Александр', @description ='Учитель математики'



--2 
--Напишите функцию получения Id преподавателя и функцию получения Id предмета;



--CREATE FUNCTION [GetLecturerId] (@name nvarchar(50), @middleName nvarchar(50))
--RETURNS INT AS 
--BEGIN
--	DECLARE @id INT = (SELECT Id
--	FROM Lecturer
--	WHERE (Name = @name)AND (MiddleName = @middleName))
--	RETURN @id;
--END;
--GO

--CREATE FUNCTION [GetLessonId] (@name nvarchar(50), @middleName nvarchar(50))
--RETURNS int AS 
--BEGIN
--	DECLARE @lessonid INT = (SELECT LessonObjectId
--	FROM LessonObject,Lecturer
--	WHERE (Name = @name)AND (MiddleName = @middleName))
--	RETURN @lessonid;
--END;
--GO



--3 
--Напишите процедуру удаления предмета и процедуру удаления преподавателя;

--CREATE PROC [DeleteLesson]
--@lesson nvarchar(50)
--AS
--BEGIN
--DELETE FROM [LessonObject] WHERE [LessonObject].[LecturerId] = @lesson 
--END;
--GO

--CREATE PROC [DeleteLecturer]
--@lecturer  nvarchar(50)
--AS
--BEGIN
--DELETE FROM [LessonObject] WHERE [LessonObject].[LecturerId] = @lecturer
--END;
--GO

EXEC [DeleteLesson] @lesson = '1'

--4