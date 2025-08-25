SELECT *
FROM superstore;

-- Data Cleaning -- 

--- 1. Remove duplicate rows
--- Keep only the row with the smallest Row ID for each Order ID + Product ID

DELETE s1
FROM superstore s1
JOIN superstore s2
  ON s1.`Order ID`   = s2.`Order ID`
 AND s1.`Product ID` = s2.`Product ID`
 AND s1.`Row ID`     > s2.`Row ID`;
 
UPDATE superstore
SET 
  `Ship Mode`     = TRIM(`Ship Mode`),
  `Customer Name` = TRIM(`Customer Name`),
  `Segment`       = TRIM(`Segment`),
  `Country`       = TRIM(`Country`),
  `City`          = TRIM(`City`),
  `State`         = TRIM(`State`),
  `Region`        = TRIM(`Region`),
  `Category`      = TRIM(`Category`),
  `Sub-Category`  = TRIM(`Sub-Category`),
  `Product Name`  = TRIM(`Product Name`);

ALTER TABLE superstore 
  MODIFY `Postal Code` VARCHAR(10);

UPDATE superstore
SET `Ship Date` = STR_TO_DATE(`Ship Date`, '%m/%d/%Y');





