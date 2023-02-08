USE PostavkiTovar
GO

--1+
SELECT S.Sname 
FROM S
WHERE S.Status BETWEEN 50 AND 100

--2+
SELECT COUNT(S.Snum) KOLVO
FROM S
WHERE S.City = 'Майкоп'

--3 +
SELECT SUM(STD.Kolvo*T.Price) AS obshie
FROM STD,T
WHERE (STD.Tnum = T.Tnum) AND (STD.Dnum = 'D1')

--4+
SELECT S.Sname, AVG(T.Price*STD.Kolvo) AS Srednie  
FROM S,T,STD
WHERE (STD.Tnum = T.Tnum)AND (STD.Snum = S.Snum)
GROUP BY Sname




--5
SELECT S.City
FROM S ,D , STD
WHERE STD.Snum = S.City




