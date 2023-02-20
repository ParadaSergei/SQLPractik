--1

--CREATE PROC [INSERT]
--@name nvarchar(50) ,
--@middlename nvarchar(50),
--@lastName nvarchar(50) = null,
--@description nvarchar(100)
--as 
--begin
--insert into [Lecturer] ([Name] , [MiddleName] , [LastName] ,[Description])
--VALUES (@name , @middlename , @lastName ,@description);
--end;
--go
--exec [INSERT] @name = 'Александр' ,@middlename='Козбеков' , @lastName='Петрович' , @description ='Учитель математики'



--2
--Напишите функцию получения Id преподавателя и функцию получения Id предмета;



--CREATE FUNCTION [Lecturer] (@name nvarchar(50), @middleName nvarchar(50))
--returns int as 
--begin
--	declare @id int = (SELECT Id
--	FROM Lecturer
--	WHERE (Name = @name)AND (MiddleName = @middleName))
--	return @id;
--end;
--go

--CREATE FUNCTION [Lesson] (@name nvarchar(50), @middleName nvarchar(50))
--returns int as 
--begin
--	declare @lessonid int = (SELECT LessonObjectId
--	FROM LessonsAtDay,Lecturer
--	WHERE (Name = @name)AND (MiddleName = @middleName))
--	return @lessonid;
--end;
--go



--3
--Напишите процедуру удаления предмета и процедуру удаления преподавателя;

--CREATE PROC [Delete]
--@lesson nvarchar(50),
--@lecturer  nvarchar(50)
--as
--begin
--delete from [LessonObject] where [LessonObject].[Name] = @lesson and [LessonObject].[LecturerId] = @lecturer
--end;
--go

--4


create function [GetDayIdByName](@day nvarchar(255))
returns int as 
begin
    declare @dayId int = (select max(D.[Id]) 
                          from DayType DT join [Day] as D 
                          on DT.[Type] = lower(@day))
    return @dayId;
end;
go


create proc [UpdateLessonNumber]
    @day        nvarchar (255),
    @weekId     int, 
    @oldNumber  int,
    @newNumber  int
as
begin
    declare @dayId int = dbo.[GetDayIdByName](@day);
    update [LessonsAtDay] set [Number] = @newNumber 
    where [LessonsAtDay].DayId = @dayId and 
          LessonsAtDay.WeekId = @weekId and 
          LessonsAtDay.Number = @oldNumber;  
end;
go

