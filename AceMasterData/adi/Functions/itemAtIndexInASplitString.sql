CREATE FUNCTION adi.itemAtIndexInASplitString( @stringToSplit VARCHAR(MAX), @delimiter VARCHAR(5), @indexToReturn int)
RETURNS
 varchar(max)
AS
BEGIN
DECLARE @returnList TABLE ([ID] int, [Name] [nvarchar] (500))
 DECLARE @name NVARCHAR(255)
 DECLARE @pos INT
 DECLARE @index INT
 DECLARE @return_value varchar(max)
 SET @index = 0
 SET @return_value = null
 
 WHILE CHARINDEX(@delimiter, @stringToSplit) > 0
 BEGIN
  SELECT @pos  = CHARINDEX(@delimiter, @stringToSplit)  
  SELECT @name = SUBSTRING(@stringToSplit, 1, @pos-1)

  INSERT INTO @returnList 
  SELECT @index, @name
	
  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
  SET @index = @index + 1
 END

 INSERT INTO @returnList
 SELECT @index, @stringToSplit

 SELECT @return_value = Name from @returnList where [ID] = @indexToReturn
 
 RETURN @return_value
END
