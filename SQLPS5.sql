CREATE PROC [VSTAVKA_Id_Predmet]
@id int,
@Name nvarchar(30),
@item nvarchar(30)
as
begin
 declare @teacherId int = INSERT INTO [LessonObject] ([LecturerId], [Name], [Description] )VALUES(@id,@Name,@item )

end