CREATE FUNCTION [adi].[splitstring] ( @stringToSplit VARCHAR(MAX) )

RETURNS
@returnList TABLE ([numOrder] [tinyint] , [Name] [nvarchar] (500)) AS
BEGIN

 DECLARE @name NVARCHAR(255)
 DECLARE @pos INT
 DECLARE @orderNum INT

 SET @orderNum=0

 WHILE CHARINDEX('-', @stringToSplit) > 0

 BEGIN
  SELECT @orderNum=@orderNum+1;
  SELECT @pos  = CHARINDEX('-', @stringToSplit)  
  SELECT @name = SUBSTRING(@stringToSplit, 1, @pos-1)

  INSERT INTO @returnList 
  SELECT @orderNum,@name

  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
 END
 SELECT @orderNum=@orderNum+1;
 INSERT INTO @returnList
 SELECT @orderNum, @stringToSplit

 RETURN
END
