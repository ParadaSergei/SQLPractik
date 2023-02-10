USE PostavkiTovar
GO
--1+
SELECT STD.Snum 
FROM STD 
WHERE STD.Kolvo > (SELECT MAX(STD.Kolvo) 
				FROM STD
				WHERE STD.Snum = 'S1')
GROUP BY STD.Snum

--2+

SELECT S.Snum
FROM S
WHERE S.Status < (SELECT Status
					FROM S
					WHERE S.Snum ='S1')
--3+
INSERT INTO Tovar_Temp
SELECT Tnum, Price, EdIzm
FROM T
WHERE T.Price=some(SELECT T.Price
					FROM T
					WHERE (T.Price> 1000) AND (T.EdIzm = 'пачка'))


--4
SELECT T.Tnum Number ,T.Tname Name,((T.Price/100)*85) AS DiscountPrice
FROM STD ,T 
WHERE(STD.Tnum = T.Tnum) AND (T.EdIzm = 'пачка, 10 кг') AND (T.City = 'Москва')
			
	



--5
DELETE FROM S_TABLE 
WHERE S_TABLE.Status<20
