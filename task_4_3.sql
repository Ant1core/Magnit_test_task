/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
SELECT name
FROM [testdb].[dbo].[TOTAL_SCHEDULE1]
WHERE CAST(start_d AS DATE) BETWEEN '2019-01-14' AND '2019-01-17'
GROUP BY name
HAVING COUNT(start_d)>=3