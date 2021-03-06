CREATE PROCEDURE Get_Rasp1 @start_date DATE, @end_date DATE
AS
	UPDATE T_CONTRACTOR_WORK_DAY
	SET name=schedule.name,
		date_begin=schedule.start_d,
		date_end=schedule.end_d
		FROM
	(SELECT name, start_d, end_d
	FROM dbo.TOTAL_SCHEDULE1
	WHERE start_d BETWEEN @start_date AND @end_date) as schedule
