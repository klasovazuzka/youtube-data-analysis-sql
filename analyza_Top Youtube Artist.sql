--1.Deset umělců s nejvyšším počtem celkových zhlédnutí (Základní řazení)--
SELECT 
    "Artist", 
    "Total Views", 
    "Avg"
FROM topyoutube
ORDER BY "Total Views" DESC
LIMIT 10;
--2.Umělci s nejlepším průměrem--
SELECT 
    "Artist", 
    "Avg"
FROM topyoutube
ORDER BY "Avg" DESC;
--3.Vyhledávání konkrétního umělce--
SELECT *
FROM topyoutube
WHERE "Artist" LIKE '%Swift%';
--4.Kdo má nejvíce videí nad 100 milionů zhlédnutí?--
SELECT 
    "Artist", 
    "100M" AS "Pocet_Hitů_Nad_100M"
FROM topyoutube
WHERE "100M" > 0
ORDER BY "100M" DESC;
--5.Pokud by tam umělci byli vícekrát (agregace)--
SELECT 
    "Artist", 
    SUM("100M") AS "Celkem_100M_Videi"
FROM topyoutube
GROUP BY "Artist"
ORDER BY "Celkem_100M_Videi" DESC;