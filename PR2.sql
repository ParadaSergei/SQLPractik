USE PostavkiTovar
GO
--1 задание +
SELECT DISTINCT Tname
FROM D,T,S,STD
WHERE (STD.Dnum = D.Dnum)AND(STD.Snum = S.Snum)AND(STD.Tnum = T.Tnum)AND(S.City =D.City)

--2 задание +
SELECT DISTINCT Sname
FROM S, STD
WHERE S.Snum = STD.Snum AND STD.Dnum = 'D1'

--3 задание +
SELECT DISTINCT S.City SCity, D.City DCity

FROM S,D,STD
WHERE STD.Snum = S.Snum AND STD.Dnum = D.Dnum

--4 задание +
SELECT DISTINCT STD.Tnum
FROM S,STD
WHERE(S.Status > 50)AND(STD.Snum = S.Snum)