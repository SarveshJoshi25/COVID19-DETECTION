SELECT * FROM BASIC_INFO;UPDATE BASIC_INFO SET COUNT = 0 
WHERE (TEMP<99);
UPDATE BASIC_INFO SET COUNT = 20    
WHERE (TEMP>99 AND TEMP<102);      
UPDATE BASIC_INFO SET COUNT = 40 
WHERE (TEMP>102);
SELECT * FROM BASIC_INFO;
UPDATE BASIC_INFO SET COUNT = COUNT + 20 
WHERE    
COUGH='Y' OR RUNNING_NOSE='Y' OR SHORT_BREATH='Y';
UPDATE BASIC_INFO SET COUNT = COUNT + 20 
WHERE    
(
(COUGH='Y' AND SHORT_BREATH='Y' ) OR
(COUGH='Y' AND RUNNING_NOSE='Y') OR
(SHORT_BREATH='Y' AND RUNNING_NOSE='Y') 
);
UPDATE BASIC_INFO SET COUNT = COUNT + 20 
WHERE    
(
(COUGH='Y' AND SHORT_BREATH='Y' AND RUNNING_NOSE='Y') OR
(COUGH='Y' AND RUNNING_NOSE='Y' AND SHORT_BREATH='Y') OR
(SHORT_BREATH='Y' AND RUNNING_NOSE='Y' AND COUGH='Y') 
);
UPDATE BASIC_INFO SET COUNT = COUNT + 20
WHERE (
(FOREIGN_TRP = 'Y') OR 
(PREG = 'Y')
);
UPDATE BASIC_INFO SET COUNT = COUNT + 40
WHERE (
(FOREIGN_TRP = 'Y' AND PREG = 'Y')
);
UPDATE BASIC_INFO SET COUNT = 100 
WHERE COUNT >= 100
SELECT * FROM BASIC_INFO;
SELECT * FROM BASIC_INFO;
ALTER TABLE BASIC_INFO
ADD COLUMN PERCENTAGE VARCHAR(10);
UPDATE BASIC_INFO
SET PERCENTAGE = CONCAT(COUNT,' ','%');  
UPDATE BASIC_INFO SET ZONE='G' 
WHERE COUNT=0; 
UPDATE BASIC_INFO SET ZONE='Y' 
WHERE ( COUNT>=20 AND COUNT<40);
UPDATE BASIC_INFO SET ZONE='R' 
WHERE COUNT>=40;
SELECT * FROM BASIC_INFO;
UPDATE BASIC_INFO SET AFFECT = 'Y' 
WHERE  LOCATION IN (SELECT LOCATION FROM BASIC_INFO WHERE ZONE != 'R') = LOCATION IN (SELECT LOCATION FROM RED_ZONE);
UPDATE BASIC_INFO SET AFFECT= NULL WHERE AFFECT = 'Y' AND ZONE = 'R' ;
