USE PostavkiTovar
GO
--1 ������� +
SELECT DISTINCT Tname
FROM D,T,S,STD
WHERE (STD.Dnum = D.Dnum)AND(STD.Snum = S.Snum)AND(STD.Tnum = T.Tnum)AND(S.City =D.City)

--2 ������� +
SELECT DISTINCT Sname
FROM S, STD
WHERE S.Snum = STD.Snum AND STD.Dnum = 'D1'

--3 ������� +
SELECT DISTINCT S.City SCity, D.City DCity

FROM S,D,STD
WHERE STD.Snum = S.Snum AND STD.Dnum = D.Dnum

--4 ������� +
SELECT DISTINCT STD.Tnum
FROM S,STD
WHERE(S.Status > 50)AND(STD.Snum = S.Snum)