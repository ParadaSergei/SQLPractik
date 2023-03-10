USE [master]
GO
--CREATE LOGIN [user3] WITH PASSWORD=N'123qwe' MUST_CHANGE,
--DEFAULT_DATABASE=[master], check_expiration=on , CHECK_POLICY=ON
----GO
--ALTER SERVER ROLE [dbcreater] ADD MEMBER [user3]
--GO
--DENY VIEW ANY DATABASE TO [user3]
--GO
GRANT ALTER ANY DATABASE TO [user3]
GO
USE [master]
GO
DENY ALTER ON DATABASE ::[master] TO [user3]
GO