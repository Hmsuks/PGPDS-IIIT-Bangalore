##################################################################################################################################################
# TASK 1 : Creating a new table named 'bajaj1' containing the date, close price, 20 Day MA and 50 Day MA. (This has to be done for all 6 stocks)

# Using Database "assignment" which has tables named bajaj_auto,eicher_motors,hero_motocorp,infosys,tcs,tvs_motors
# bajaj_auto,eicher_motors,hero_motocorp,infosys,tcs,tvs_motors Tables have been created by importing CSVs provided . Only 'Date' and 'Close Price' column imported.

USE assignment

SET SQL_SAFE_UPDATES = 0;


# Adding new column for storing the converted date

ALTER TABLE bajaj_auto ADD COLUMN realdate DATE

# Converting the 'realdate' column from text to date
UPDATE bajaj_auto SET realdate = STR_TO_DATE(Date, '%d-%M-%Y');


# Dropping original 'Date' column having datatype "text"
 alter table bajaj_auto
 drop column Date;


# changing 'realdate' column name to 'Date'
alter table bajaj_auto
change realdate Date date;

# Creating a new table named 'bajaj1' containing the RowNumber(temporary column to fill 'NULL'), date, close price, 20 Day MA and 50 Day MA.

CREATE TABLE bajaj1
SELECT 
	    ROW_NUMBER() OVER (ORDER BY Date ASC) RowNumber,
        Date,
       `Close Price`,
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 19 PRECEDING),2) AS "20 Day MA",
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 49 PRECEDING),2) AS "50 Day MA"
FROM bajaj_auto
order by Date;
# Updating bajaj1 to fill null for first 19 rows of 20 Day MA
update bajaj1
  set `20 Day MA` = null
where RowNumber<=19

# Updating bajaj1 to fill null for first 49 rows of 50 Day MA
update bajaj1
  set `50 Day MA` = null
where RowNumber<=49
# dropping the temporary column 'RowNumber' 
alter table bajaj1
  drop column RowNumber;


# Verifying the output for task 1
Select * from bajaj1 LIMIT 100;


#Similarly the same operations are done for other 5 tables of TASK1
##################################################eicher_motors#####################################

ALTER TABLE eicher_motors ADD COLUMN realdate DATE

# Converting the 'realdate' column from text to date
UPDATE eicher_motors SET realdate = STR_TO_DATE(Date, '%d-%M-%Y');


# Dropping original 'Date' column having datatype "text"
 alter table eicher_motors
 drop column Date;


# changing 'realdate' column name to 'Date'
alter table eicher_motors
change realdate Date date;

# Creating a new table named 'eicher1' containing the RowNumber(temporary column to fill 'NULL'), date, close price, 20 Day MA and 50 Day MA.

CREATE TABLE eicher1
SELECT 
	    ROW_NUMBER() OVER (ORDER BY Date ASC) RowNumber,
        Date,
       `Close Price`,
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 19 PRECEDING),2) AS "20 Day MA",
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 49 PRECEDING),2) AS "50 Day MA"
FROM eicher_motors
order by Date;

# Updating eicher1 to fill null for first 19 rows of 20 Day MA
update eicher1
  set `20 Day MA` = null
where RowNumber<=19

# Updating eicher1 to fill null for first 49 rows of 50 Day MA
update eicher1
  set `50 Day MA` = null
where RowNumber<=49
# dropping the temporary column 'RowNumber' 
alter table eicher1
  drop column RowNumber;


# Verifying the output for task 1
Select * from eicher1 LIMIT 100;

######################################################hero_motocorp##############################
ALTER TABLE hero_motocorp ADD COLUMN realdate DATE

# Converting the 'realdate' column from text to date
UPDATE hero_motocorp SET realdate = STR_TO_DATE(Date, '%d-%M-%Y');


# Dropping original 'Date' column having datatype "text"
 alter table hero_motocorp
 drop column Date;


# changing 'realdate' column name to 'Date'
alter table hero_motocorp
change realdate Date date;

# Creating a new table named 'hero1' containing the RowNumber(temporary column to fill 'NULL'), date, close price, 20 Day MA and 50 Day MA.

CREATE TABLE hero1
SELECT 
	    ROW_NUMBER() OVER (ORDER BY Date ASC) RowNumber,
        Date,
       `Close Price`,
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 19 PRECEDING),2) AS "20 Day MA",
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 49 PRECEDING),2) AS "50 Day MA"
FROM hero_motocorp
order by Date;

# Updating hero1 to fill null for first 19 rows of 20 Day MA
update hero1
  set `20 Day MA` = null
where RowNumber<=19

# Updating hero1 to fill null for first 49 rows of 50 Day MA
update hero1
  set `50 Day MA` = null
where RowNumber<=49
# dropping the temporary column 'RowNumber' 
alter table hero1
  drop column RowNumber;


# Verifying the output for task 1
Select * from hero1 LIMIT 100;

#######################################################infosys###################################

ALTER TABLE infosys ADD COLUMN realdate DATE

# Converting the 'realdate' column from text to date
UPDATE infosys SET realdate = STR_TO_DATE(Date, '%d-%M-%Y');


# Dropping original 'Date' column having datatype "text"
 alter table infosys
 drop column Date;


# changing 'realdate' column name to 'Date'
alter table infosys
change realdate Date date;

# Creating a new table named 'infosys1' containing the RowNumber(temporary column to fill 'NULL'), date, close price, 20 Day MA and 50 Day MA.

CREATE TABLE infosys1
SELECT 
	    ROW_NUMBER() OVER (ORDER BY Date ASC) RowNumber,
        Date,
       `Close Price`,
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 19 PRECEDING),2) AS "20 Day MA",
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 49 PRECEDING),2) AS "50 Day MA"
FROM infosys
order by Date;

# Updating infosys1 to fill null for first 19 rows of 20 Day MA
update infosys1
  set `20 Day MA` = null
where RowNumber<=19

# Updating infosys1 to fill null for first 49 rows of 50 Day MA
update infosys1
  set `50 Day MA` = null
where RowNumber<=49
# dropping the temporary column 'RowNumber' 
alter table infosys1
  drop column RowNumber;


# Verifying the output for task 1
Select * from infosys1 LIMIT 100;


#################################################################tcs###############

ALTER TABLE tcs ADD COLUMN realdate DATE

# Converting the 'realdate' column from text to date
UPDATE tcs SET realdate = STR_TO_DATE(Date, '%d-%M-%Y');


# Dropping original 'Date' column having datatype "text"
 alter table tcs
 drop column Date;


# changing 'realdate' column name to 'Date'
alter table tcs
change realdate Date date;

# Creating a new table named 'tcs1' containing the RowNumber(temporary column to fill 'NULL'), date, close price, 20 Day MA and 50 Day MA.

CREATE TABLE tcs1
SELECT 
	    ROW_NUMBER() OVER (ORDER BY Date ASC) RowNumber,
        Date,
       `Close Price`,
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 19 PRECEDING),2) AS "20 Day MA",
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 49 PRECEDING),2) AS "50 Day MA"
FROM tcs
order by Date;

# Updating tcs1 to fill null for first 19 rows of 20 Day MA
update tcs1
  set `20 Day MA` = null
where RowNumber<=19

# Updating tcs1 to fill null for first 49 rows of 50 Day MA
update tcs1
  set `50 Day MA` = null
where RowNumber<=49
# dropping the temporary column 'RowNumber' 
alter table tcs1
  drop column RowNumber;


# Verifying the output for task 1
Select * from tcs1 LIMIT 100;



#################################################################tvs#######################

ALTER TABLE tvs_motors ADD COLUMN realdate DATE

# Converting the 'realdate' column from text to date
UPDATE tvs_motors SET realdate = STR_TO_DATE(Date, '%d-%M-%Y');


# Dropping original 'Date' column having datatype "text"
 alter table tvs_motors
 drop column Date;


# changing 'realdate' column name to 'Date'
alter table tvs_motors
change realdate Date date;

# Creating a new table named 'tvs1' containing the RowNumber(temporary column to fill 'NULL'), date, close price, 20 Day MA and 50 Day MA.

CREATE TABLE tvs1
SELECT 
	    ROW_NUMBER() OVER (ORDER BY Date ASC) RowNumber,
        Date,
       `Close Price`,
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 19 PRECEDING),2) AS "20 Day MA",
       ROUND(AVG(`Close Price`) OVER (ORDER BY Date ASC ROWS 49 PRECEDING),2) AS "50 Day MA"
FROM tvs_motors
order by Date;

# Updating 'tvs1' to fill null for first 19 rows of 20 Day MA
update tvs1
  set `20 Day MA` = null
where RowNumber<=19

# Updating 'tvs1' to fill null for first 49 rows of 50 Day MA
update tvs1
  set `50 Day MA` = null
where RowNumber<=49
# dropping the temporary column 'RowNumber' 
alter table tvs1
  drop column RowNumber;


# Verifying the output for task 1
Select * from tvs1 LIMIT 100;


######################################################END OF TASK1########################################################################

#TASK2 : Creating a master table containing the date and close price of all the six stocks. 
#Column header for the price is the name of the stock.
#Date         	      Bajaj        	       TCS      	   TVS      	     Infosys   	      Eicher       	        Hero 


create table master_table as

select bajaj1.`Date`, bajaj1.`Close Price` AS Bajaj,
       tcs1.`Close Price` AS TCS,
       tvs1.`Close Price` AS TVS,
       infosys1.`Close Price` AS Infosys,
       eicher1.`Close Price` AS Eicher,
       hero1.`Close Price` AS Hero
       
FROM bajaj1 inner join tcs1 on bajaj1.Date= tcs1.Date 
			inner join tvs1 on tcs1.Date= tvs1.Date 
            inner join infosys1 on tvs1.Date= infosys1.Date 
            inner join eicher1 on infosys1.Date=eicher1.Date 
            inner join hero1 on eicher1.Date= hero1.Date 

# Verifying the output for task 2

select * from master_table

######################################################END OF TASK2########################################################################

#TASK3: Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. 
#Perform this operation for all stocks.
#Date      	          Close Price       	      Signal        


######################Generating bajaj2#####################
CREATE TABLE bajaj2
select Date,`Close price`,
CASE
    WHEN `20 Day MA` > `50 Day MA` AND (LAG(`20 Day MA`,1) over w ) < (LAG(`50 Day MA`,1) over w) THEN 'BUY'
    WHEN `20 Day MA` < `50 Day MA` AND (LAG(`20 Day MA`,1) over w) > (LAG(`50 Day MA`,1) over w) THEN 'SELL'
    ELSE 'HOLD'
END AS 'Signal'
from bajaj1
window w as (order by date);

#verifying output for task3

select * from bajaj2

--------------------------------------------------------
######################Generating eicher2#####################
CREATE TABLE eicher2
select Date,`Close price`,
CASE
    WHEN `20 Day MA` > `50 Day MA` AND (LAG(`20 Day MA`,1) over w ) < (LAG(`50 Day MA`,1) over w) THEN 'BUY'
    WHEN `20 Day MA` < `50 Day MA` AND (LAG(`20 Day MA`,1) over w) > (LAG(`50 Day MA`,1) over w) THEN 'SELL'
    ELSE 'HOLD'
END AS 'Signal'
from eicher1
window w as (order by date);

#verifying output for task3

select * from eicher2

######################Generating hero2#####################
CREATE TABLE hero2
select Date,`Close price`,
CASE
    WHEN `20 Day MA` > `50 Day MA` AND (LAG(`20 Day MA`,1) over w ) < (LAG(`50 Day MA`,1) over w) THEN 'BUY'
    WHEN `20 Day MA` < `50 Day MA` AND (LAG(`20 Day MA`,1) over w) > (LAG(`50 Day MA`,1) over w) THEN 'SELL'
    ELSE 'HOLD'
END AS 'Signal'
from hero1
window w as (order by date);

#verifying output for task3

select * from hero2
-------------------------------------------------------------------


######################Generating infosys2#####################
CREATE TABLE infosys2
select Date,`Close price`,
CASE
    WHEN `20 Day MA` > `50 Day MA` AND (LAG(`20 Day MA`,1) over w ) < (LAG(`50 Day MA`,1) over w) THEN 'BUY'
    WHEN `20 Day MA` < `50 Day MA` AND (LAG(`20 Day MA`,1) over w) > (LAG(`50 Day MA`,1) over w) THEN 'SELL'
    ELSE 'HOLD'
END AS 'Signal'
from infosys1
window w as (order by date);

#verifying output for task3

select * from infosys2

######################Generating tcs2#####################
CREATE TABLE tcs2
select Date,`Close price`,
CASE
    WHEN `20 Day MA` > `50 Day MA` AND (LAG(`20 Day MA`,1) over w ) < (LAG(`50 Day MA`,1) over w) THEN 'BUY'
    WHEN `20 Day MA` < `50 Day MA` AND (LAG(`20 Day MA`,1) over w) > (LAG(`50 Day MA`,1) over w) THEN 'SELL'
    ELSE 'HOLD'
END AS 'Signal'
from tcs1
window w as (order by date);

#verifying output for task3

select * from tcs2
-------------------------------------------------------------------------


######################Generating tvs2#####################
CREATE TABLE tvs2
select Date,`Close price`,
CASE
    WHEN `20 Day MA` > `50 Day MA` AND (LAG(`20 Day MA`,1) over w ) < (LAG(`50 Day MA`,1) over w) THEN 'BUY'
    WHEN `20 Day MA` < `50 Day MA` AND (LAG(`20 Day MA`,1) over w) > (LAG(`50 Day MA`,1) over w) THEN 'SELL'
    ELSE 'HOLD'
END AS 'Signal'
from tvs1
window w as (order by date);

#verifying output for task3

select * from tvs2
######################################################END OF TASK3########################################################################

#TASK4: Creating a User defined function, that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock      


DELIMITER $$

CREATE FUNCTION Bajaj_Signal(DateIN date)

 RETURNS VARCHAR(50) DETERMINISTIC
    BEGIN
        
        DECLARE output varchar(50);
        
        SET output = (SELECT `Signal` from bajaj2 WHERE Date=DateIN );
        
        RETURN output;

    END 
$$

DELIMITER ;
 
#verifying output for task4 
  
select Bajaj_Signal('2015-10-19') AS 'Signal'

