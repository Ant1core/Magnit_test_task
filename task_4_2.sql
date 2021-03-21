/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
SELECT name, COUNT(end_d) AS jobs
FROM [testdb].[dbo].[TOTAL_SCHEDULE1]
WHERE CAST(start_d AS DATE) < '2019-01-31'
GROUP BY name
HAVING COUNT(end_d)>10