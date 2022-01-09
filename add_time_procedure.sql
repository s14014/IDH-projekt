CREATE PROCEDURE [dbo].[AddTime]
AS
DECLARE @val INT
DECLARE @date DATE
DECLARE @englishMonth VARCHAR(30),  @englishDay VARCHAR(30), @season VARCHAR(30)
SELECT @val = 0

WHILE @val < 730
BEGIN
	SELECT @date = DATEADD(DAY, @val, '2020-01-03')
	
	 IF DATEPART(MM, @date) = 1 SELECT @englishMonth = 'January'
ELSE IF DATEPART(MM, @date) = 2 SELECT @englishMonth = 'February'
ELSE IF DATEPART(MM, @date) = 3 SELECT @englishMonth = 'March'
ELSE IF DATEPART(MM, @date) = 4 SELECT @englishMonth = 'April'
ELSE IF DATEPART(MM, @date) = 5 SELECT @englishMonth = 'May'
ELSE IF DATEPART(MM, @date) = 6 SELECT @englishMonth = 'June'
ELSE IF DATEPART(MM, @date) = 7 SELECT @englishMonth = 'July'
ELSE IF DATEPART(MM, @date) = 8	SELECT @englishMonth = 'August'
ELSE IF DATEPART(MM, @date) = 9 SELECT @englishMonth ='September'
ELSE IF DATEPART(MM, @date) = 10 SELECT @englishMonth ='October'
ELSE IF DATEPART(MM, @date) = 11 SELECT @englishMonth='November'
ELSE SELECT @englishMonth = 'December'

if DATEPART(MM, @date) in (1, 2, 3) SELECT @season = 'Witer'
ELSE if DATEPART(MM, @date) in (4, 5, 6) SELECT @season = 'Spring'
ELSE if DATEPART(MM, @date) in (7, 8, 9) SELECT @season = 'Summer'
ELSE if DATEPART(MM, @date) in (10, 11, 12) SELECT @season = 'Autumn'

IF DATEPART(W, @date) = 1 SELECT @englishDay = 'Sunday'
ELSE IF DATEPART(W, @date) = 2 SELECT @englishDay='Monday'
ELSE IF DATEPART(W, @date) = 3 SELECT @englishDay = 'Tuesday'
ELSE IF DATEPART(W, @date) = 4 SELECT @englishDay = 'Wednesday'
ELSE IF DATEPART(W, @date) = 5 SELECT @englishDay ='Thursday'
ELSE IF DATEPART(W, @date) = 6 SELECT @englishDay = 'Friday'
ELSE SELECT @englishDay = 'Saturday'

	
	INSERT INTO dbo.TimeSt VALUES(@date, DATEPART(DAY, @date), @englishDay, DATEPART(MM, @date), @englishMonth, DATEPART(YEAR, @date), DATEPART(QQ, @date), @season)
	SELECT @val = @val + 1
END