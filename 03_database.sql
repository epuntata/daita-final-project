CREATE DATABASE adv_data;
USE adv_data;

CREATE TABLE dati (
	adv_ID INT, 
	Radio FLOAT, 
	Newspaper FLOAT, 
	Actress VARCHAR(5), 
	Social INT, 
	tv_fatturato INT, 
	radio_fatturato INT, 
	social_fatturato INT, 
	paper_fatturato INT, 
	Sales INT, 
	TV FLOAT, 
	Actor VARCHAR(5)
);

CREATE INDEX sales ON dati (Sales);

SELECT MAX(Radio), MAX(Newspaper), MAX(TV), MAX(Social)
FROM adv_data.dati;

SELECT MIN(Radio), MIN(Newspaper), MIN(TV), MIN(Social)
FROM adv_data.dati;

SELECT MIN(Sales), MAX(Sales), AVG(Sales)
FROM adv_data.dati;