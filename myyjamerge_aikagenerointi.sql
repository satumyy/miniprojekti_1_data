MERGE snowflake_dw.dbo.dim_myyja AS t
    USING myyja as s
    ON t.myyja_biz_key = s.myyja_id
    WHEN MATCHED AND 
       (t.nimi != s.nimi) THEN
        -- Row exists and data is different
        UPDATE SET t.nimi = s.nimi
    WHEN NOT MATCHED THEN 
        -- Row exists in source but not in target        
        INSERT (myyja_biz_key, nimi) VALUES (s.myyja_id, s.nimi);	

select * from myyja
select * from snowflake_dw.dbo.dim_myyja


Declare @Startdate date = '2020-01-01', @Enddate date = '2040-12-31', @Loopdate date
SET @LoopDate = @StartDate
set nocount on
WHILE @LoopDate <= @EndDate
BEGIN
  INSERT INTO dim_aika VALUES
	(
		CAST(CONVERT(VARCHAR(8), @LoopDate, 112) AS int) , -- date key
		@LoopDate,					-- date
		Year(@LoopDate),			-- calendar year
		Month(@LoopDate),			-- month number of year
		datename(mm, @LoopDate),	-- month name
		DAY( @LoopDate),			-- day number of month
		datename(dw, @LoopDate),	-- day name of week
		datepart(qq, @LoopDate)		-- calendar quarter

	)  		  

	SET @LoopDate = DateAdd(dd, 1, @LoopDate)
END
go

Select * from dim_aika