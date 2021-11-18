--Temporary table to hold the prime numbers
DECLARE @table TABLE (PrimeNumber INT);

--A string variable we will use to print the final result
DECLARE @final AS VARCHAR(1500);
SET @final = '';

--A counter variable we will use to populate the table. Set with an initial value 2, i.e the first prime number.
DECLARE @counter INT;
SET @counter = 2;

WHILE @counter <= 1000
    BEGIN
        IF NOT EXISTS (SELECT PrimeNumber FROM @table WHERE @counter % PrimeNumber = 0)
            BEGIN 
            --Number is prime, insert into table
                INSERT INTO @table SELECT @counter
            --Append @counter to @final, adding '&' at the end 
                SET @final = @final + CAST(@counter AS VARCHAR(20))+' & ' 
            END
        SET @counter = @counter + 1
    END
--Removing the final '&' before printing our result
SELECT SUBSTRING(@final,0,LEN(@final))