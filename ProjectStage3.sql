--Step 1: Oracle SQL:  DDL and DML


/*
i) Name Of The Project: Gowtham Property Developers Database Creation
Course Number and Title: ISMG6080 Database Management Systems
Semester and Year: Fall 2025

ii) Name: Rithik Rathinavel Ragupathi
Student ID: 111471498

iii) Property: (Property_ID, Name,Location, Status)
PK= Property_ID  FK= None

Plot: (Plot_ID, Property_ID, PlotNo, SizeSqft, Facing, Status)
PK= Plot_ID  FK= Property_ID

PriceHistory: (PriceHistory_ID, Plot_ID, PriceType, Amount, EffectiveFrom, EffectiveTo)
PK= PriceHistory_ID  FK= Plot_ID

Customer: (Customer_ID, FullName, Phone, Address)
PK= Customer_ID  FK= None

Sales: (Sale_ID, Plot_ID, Customer_ID, AgreedPrice, SaleDate)
PK= Sale_ID  FK= Plot_ID, Customer_ID

PropertyLedger: (Ledger_ID, Property_ID, EntryDate, EntryType, Amount, Notes)
PK= Ledger_ID  FK= Property_ID


*/
DROP TABLE Sales;
DROP TABLE PropertyLedger;
DROP TABLE PriceHistory;
DROP TABLE Customer;
DROP TABLE Plot;
DROP TABLE Property;

CREATE TABLE Property(
    Property_ID INTEGER PRIMARY KEY,
    Name VARCHAR2(50),
    Location VARCHAR2(25),
    Status VARCHAR2(25)
);

CREATE TABLE Plot(
    Plot_ID VARCHAR(5) PRIMARY KEY,
    Property_ID INTEGER,
    PlotNo INTEGER,
    SizeSqft INTEGER,
    Facing VARCHAR(25),
    Status VARCHAR(25),
    FOREIGN KEY (Property_ID) REFERENCES Property(Property_ID)
);

CREATE TABLE PriceHistory(
    PriceHistory_ID VARCHAR(5) PRIMARY KEY,
    Plot_ID VARCHAR2(5),
    PriceType VARCHAR2(50),
    Amount INTEGER,
    EffectiveFrom DATE,
    EffectiveTO DATE,
    FOREIGN KEY (PLOT_ID) REFERENCES Plot (Plot_ID)
);

CREATE TABLE Customer(
    Customer_ID VARCHAR2(5) PRIMARY KEY,
    FullName VARCHAR2(100),
    Phone INTEGER,
    Email VARCHAR2(75),
    Address VARCHAR2(50)
);

CREATE TABLE Sales(
    Sale_ID VARCHAR2(6) PRIMARY KEY,
    Plot_ID VARCHAR2(5),
    Customer_ID VARCHAR2(5),
    AgreedPrice INTEGER,
    SaleDate DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Plot_ID) REFERENCES Plot(Plot_ID)
);

CREATE TABLE PropertyLedger(
    Ledger_ID VARCHAR2(6) PRIMARY KEY,
    Property_ID INTEGER,
    EntryDate DATE,
    EntryType VARCHAR2(100),
    Amount INTEGER,
    Notes VARCHAR2(150),
    FOREIGN KEY (Property_ID) REFERENCES property(Property_ID)
);



--Insert Statements
INSERT INTO Property VALUES (1, 'Atlassia', 'Chennai', 'Active');
INSERT INTO Property VALUES (2, 'Concord', 'Delhi', 'Active');
INSERT INTO Property VALUES (3, 'Royal Grand', 'Bangalore', 'Active');
INSERT INTO Property VALUES (4, 'Parson Homes', 'Chennai', 'Planning');
INSERT INTO Property VALUES (5, 'Casa Grand', 'Delhi', 'Planning');

INSERT INTO Plot VALUES ('P1001', 1, 1, 4050, 'North', 'Sold');
INSERT INTO Plot VALUES ('P1002', 1, 2, 3060, 'Northwest', 'Sold');
INSERT INTO Plot VALUES ('P1003', 2, 1, 4032, 'East', 'Sold');
INSERT INTO Plot VALUES ('P1004', 2, 2, 5145, 'Southeast', 'Sold');
INSERT INTO Plot VALUES ('P1005', 3, 1, 5164, 'West', 'Sold');
INSERT INTO Plot VALUES ('P1006', 3, 2, 5002, 'Northeast', 'Sold');
INSERT INTO Plot VALUES ('P1007', 1, 3, 3015, 'Southwest', 'Sold');
INSERT INTO Plot VALUES ('P1008', 2, 3, 2014, 'East', 'Sold');
INSERT INTO Plot VALUES ('P1009', 3, 3, 3815, 'North', 'Sold');
INSERT INTO Plot VALUES ('P1010', 1, 4, 3195, 'East', 'Available');
INSERT INTO Plot VALUES ('P1011', 2, 4, 3914, 'South', 'Available');
INSERT INTO Plot VALUES ('P1012', 3, 4, 3350, 'West', 'Available');
INSERT INTO Plot VALUES ('P1013', 1, 5, 4265, 'North', 'Sold');
INSERT INTO Plot VALUES ('P1014', 2, 5, 6537, 'South', 'Sold');
INSERT INTO Plot VALUES ('P1015', 3, 5, 3563, 'East', 'Sold');

INSERT INTO PriceHistory VALUES ('PH901', 'P1001', 'GUIDELINE', 1053400, TO_DATE('13-May-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH902', 'P1001', 'FIXED_PRICE', 1524650, TO_DATE('23-Nov-2023','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH903', 'P1002', 'GUIDELINE', 1132590, TO_DATE('07-Mar-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH904', 'P1002', 'FIXED_PRICE', 1543600, TO_DATE('07-Mar-2022','DD-Mon-YYYY'), TO_DATE('17-Aug-2023','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH905', 'P1002', 'FIXED_PRICE', 1743500, TO_DATE('18-Aug-2023','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH906', 'P1003', 'GUIDELINE', 1032000, TO_DATE('15-Feb-2022','DD-Mon-YYYY'), TO_DATE('25-Apr-2023','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH907', 'P1003', 'GUIDELINE', 1134500, TO_DATE('26-Apr-2025','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH908', 'P1003', 'FIXED_PRICE', 1634587, TO_DATE('15-Feb-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH909', 'P1004', 'GUIDELINE', 1265380, TO_DATE('18-Jan-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH910', 'P1004', 'FIXED_PRICE', 1657890, TO_DATE('18-Jan-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH911', 'P1005', 'GUIDELINE', 1025600, TO_DATE('04-Jun-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH912', 'P1005', 'FIXED_PRICE', 1524500, TO_DATE('04-Jun-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH913', 'P1006', 'GUIDELINE', 1090500, TO_DATE('05-Jan-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH914', 'P1006', 'FIXED_PRICE', 1250500, TO_DATE('05-Jan-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH915', 'P1007', 'GUIDELINE', 1150400, TO_DATE('07-Feb-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH916', 'P1007', 'FIXED_PRICE', 1450500, TO_DATE('07-Feb-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH917', 'P1008', 'GUIDELINE', 1057600, TO_DATE('08-Feb-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH918', 'P1008', 'FIXED_PRICE', 1643000, TO_DATE('08-Feb-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH919', 'P1009', 'GUIDELINE', 1029600, TO_DATE('10-Jan-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH920', 'P1009', 'FIXED_PRICE', 1354000, TO_DATE('10-Jan-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH921', 'P1010', 'GUIDELINE', 1000000, TO_DATE('02-Feb-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH922', 'P1010', 'FIXED_PRICE', 1534000, TO_DATE('02-Feb-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH923', 'P1011', 'GUIDELINE', 1100000, TO_DATE('04-Mar-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH924', 'P1011', 'FIXED_PRICE', 1382000, TO_DATE('04-Mar-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH925', 'P1012', 'GUIDELINE', 1050000, TO_DATE('21-Jan-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH926', 'P1012', 'FIXED_PRICE', 1254000, TO_DATE('21-Jan-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH927', 'P1013', 'GUIDELINE', 1150000, TO_DATE('03-Mar-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH928', 'P1013', 'FIXED_PRICE', 1542000, TO_DATE('03-Mar-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH929', 'P1014', 'GUIDELINE', 1050500, TO_DATE('14-Mar-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH930', 'P1014', 'FIXED_PRICE', 1523000, TO_DATE('14-Mar-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH931', 'P1015', 'GUIDELINE', 1150500, TO_DATE('20-Apr-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));
INSERT INTO PriceHistory VALUES ('PH932', 'P1015', 'FIXED_PRICE', 1623870, TO_DATE('20-Apr-2022','DD-Mon-YYYY'), TO_DATE('31-Dec-9999','DD-Mon-YYYY'));

INSERT INTO Customer VALUES ('CS101', 'Rithik', 9784537261, 'rithik@gmail.com', 'Chennai');
INSERT INTO Customer VALUES ('CS102', 'Nayana', 8945372538, 'nayana@gmail.com', 'Bangalore');
INSERT INTO Customer VALUES ('CS103', 'Albert', 7394618457, 'albert@gmail.com', 'Delhi');
INSERT INTO Customer VALUES ('CS104', 'Kevin', 9374628463, 'kevin@gmail.com', 'Delhi');
INSERT INTO Customer VALUES ('CS105', 'Wilson', 9164738461, 'wilson@gmail.com', 'Chennai');
INSERT INTO Customer VALUES ('CS106', 'Ram', 9003615385, 'ram@gmail.com', 'Bangalore');
INSERT INTO Customer VALUES ('CS107', 'Sophie', 7001620465, 'sophie@gmail.com', 'Bangalore');
INSERT INTO Customer VALUES ('CS108', 'Merylin', 7820910165, 'merylin@gmail.com', 'Chennai');
INSERT INTO Customer VALUES ('CS109', 'Heather', 9854273817, 'heather@gmail.com', 'Chennai');
INSERT INTO Customer VALUES ('CS110', 'Rafeeck', 9010191045, 'rafeeck@gmail.com', 'Delhi');
INSERT INTO Customer VALUES ('CS111', 'Dev', 8874920175, 'dev@gmail.com', 'Delhi');
INSERT INTO Customer VALUES ('CS112', 'John', 8935475829, 'john@gmail.com', 'Bangalore');

INSERT INTO Sales VALUES ('SID901', 'P1001', 'CS101', 2578050, TO_DATE('21-Jan-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID902', 'P1002', 'CS105', 2876090, TO_DATE('26-Jan-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID903', 'P1007', 'CS108', 2600900, TO_DATE('03-Feb-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID904', 'P1013', 'CS109', 2692000, TO_DATE('15-Feb-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID905', 'P1003', 'CS103', 2769087, TO_DATE('25-Feb-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID906', 'P1004', 'CS104', 2923270, TO_DATE('14-Mar-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID907', 'P1008', 'CS110', 2700600, TO_DATE('24-Mar-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID908', 'P1014', 'CS111', 2573500, TO_DATE('05-Apr-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID909', 'P1005', 'CS109', 2550100, TO_DATE('18-Apr-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID910', 'P1006', 'CS110', 2341000, TO_DATE('19-May-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID911', 'P1009', 'CS111', 2383600, TO_DATE('30-May-2025','DD-Mon-YYYY'));
INSERT INTO Sales VALUES ('SID912', 'P1015', 'CS112', 2774370, TO_DATE('13-Jun-2025','DD-Mon-YYYY'));

INSERT INTO PropertyLedger VALUES ('LID001', 1, TO_DATE('10-Feb-2024','DD-Mon-YYYY'), 'Investment', 1000000, 'Initial Capital');
INSERT INTO PropertyLedger VALUES ('LID002', 2, TO_DATE('15-Feb-2024','DD-Mon-YYYY'), 'Investment', 1000000, 'Initial Capital');
INSERT INTO PropertyLedger VALUES ('LID003', 3, TO_DATE('01-Mar-2024','DD-Mon-YYYY'), 'Investment', 1000000, 'Initial Capital');
INSERT INTO PropertyLedger VALUES ('LID004', 1, TO_DATE('10-Mar-2024','DD-Mon-YYYY'), 'Expense', 25000, 'JCB earthwork leveling');
INSERT INTO PropertyLedger VALUES ('LID005', 1, TO_DATE('12-Mar-2024','DD-Mon-YYYY'), 'Expense', 18000, 'Road construction material purchase');
INSERT INTO PropertyLedger VALUES ('LID006', 1, TO_DATE('20-Mar-2024','DD-Mon-YYYY'), 'Expense', 12000, 'Solar pole installation');
INSERT INTO PropertyLedger VALUES ('LID007', 2, TO_DATE('30-Mar-2024','DD-Mon-YYYY'), 'Expense', 20000, 'Pipe laying for water connection');
INSERT INTO PropertyLedger VALUES ('LID008', 2, TO_DATE('05-Apr-2024','DD-Mon-YYYY'), 'Expense', 15000, 'Electrical line setup');
INSERT INTO PropertyLedger VALUES ('LID009', 3, TO_DATE('15-Apr-2024','DD-Mon-YYYY'), 'Expense', 30000, 'Compound wall construction');
INSERT INTO PropertyLedger VALUES ('LID010', 3, TO_DATE('25-Apr-2024','DD-Mon-YYYY'), 'Expense', 22000, 'Land leveling machinery cost');
INSERT INTO PropertyLedger VALUES ('LID011', 3, TO_DATE('02-May-2024','DD-Mon-YYYY'), 'Expense', 12000, 'Pipe purchase for drainage setup');
INSERT INTO PropertyLedger VALUES ('LID012', 1, TO_DATE('03-Aug-2025','DD-Mon-YYYY'), 'Income', 2578050, 'Sold Plot 1');
INSERT INTO PropertyLedger VALUES ('LID013', 1, TO_DATE('05-Aug-2025','DD-Mon-YYYY'), 'Income', 2876090, 'Sold Plot 2');
INSERT INTO PropertyLedger VALUES ('LID014', 2, TO_DATE('11-Aug-2025','DD-Mon-YYYY'), 'Income', 2769087, 'Sold Plot 1');
INSERT INTO PropertyLedger VALUES ('LID015', 2, TO_DATE('11-Aug-2025','DD-Mon-YYYY'), 'Income', 2923270, 'Sold Plot 2');
SELECT * FROM PropertyLedger;

COMMIT;
PURGE RECYCLEBIN;


--STEP 2 : Queries
--- Query01 INNER JOIN  
-- Q: List all active properties and their associated plots, showing property name, plot number, size, and facing direction.  

SELECT  
       p.Name          AS Property_Name,  
       pl.PlotNo       AS Plot_Number,  
       pl.SizeSqft     AS Plot_Size,  
       pl.Facing       AS Facing_Direction  
FROM        Property p  
INNER JOIN  Plot pl  
ON          p.Property_ID = pl.Property_ID  
WHERE       p.Status = 'Active'  
ORDER BY    p.Name, pl.PlotNo;

-- Query02  INNER JOIN
-- Q: For each property, how many plots exist and what is the total site area (sqft)?

SELECT  p.Property_ID,
        p.Name AS property_name,
        COUNT(pl.Plot_ID)      AS plot_count,
        SUM(pl.SizeSqft)       AS total_sqft
FROM        Property p
INNER JOIN  Plot     pl ON pl.Property_ID = p.Property_ID
GROUP BY p.Property_ID, p.Name
ORDER BY p.Property_ID;


-- Query03  OUTER JOIN (RIGHT)
-- Q: Show all plots with any sale info if present; unsold plots should still appear.

SELECT  pl.Plot_ID,
        pl.Property_ID,
        pl.Status       AS plot_status,
        s.Sale_ID,
        s.Customer_ID,
        s.SaleDate
FROM        Sales s
RIGHT JOIN   Plot pl ON s.Plot_ID = pl.Plot_ID
ORDER BY pl.Property_ID, pl.PlotNo;



-- Query04  SELF JOIN
-- Q: List pairs of customers who live in the same city (Address) to identify potential shared buyers.

SELECT  
       c1.Customer_ID   AS customer_a,
       c1.FullName      AS name_a,
       c2.Customer_ID   AS customer_b,
       c2.FullName      AS name_b,
       c1.Address       AS shared_city
FROM        Customer c1
JOIN        Customer c2
     ON     c1.Address = c2.Address
    AND     c1.Customer_ID < c2.Customer_ID      -- avoid duplicates and self-pairs
ORDER BY shared_city, customer_a, customer_b;


-- Query05  SET OPERATION (MINUS)
-- Q: Which plots have never appeared in the Sales table? (i.e., currently unsold/never sold)

SELECT Plot_ID
FROM   Plot

MINUS

SELECT Plot_ID
FROM   Sales
ORDER BY Plot_ID;


-- Query06  AGGREGATE (WHERE + GROUP BY + HAVING)
-- Q: By property, what is total revenue from sold plots, considering only sales in 2025?
--    Show properties whose revenue exceeds 5,000,000.

SELECT  pl.Property_ID,
        p.Name        AS property_name,
        SUM(s.AgreedPrice) AS total_revenue_2025
FROM        Sales s
JOIN        Plot  pl ON pl.Plot_ID     = s.Plot_ID
JOIN        Property p ON p.Property_ID = pl.Property_ID
WHERE s.SaleDate >= DATE '2025-01-01'
GROUP BY pl.Property_ID, p.Name
HAVING SUM(s.AgreedPrice) > 5000000
ORDER BY total_revenue_2025 DESC;



-- Query07  AGGREGATE (WHERE + GROUP BY + HAVING)
-- Q: For each property, show the total number of sold plots and the average sale price. 
--    Display only properties where the average sale price exceeds 2,600,000.

SELECT  
       p.Property_ID,
       p.Name                     AS property_name,
       COUNT(s.Sale_ID)           AS total_plots_sold,
       ROUND(AVG(s.AgreedPrice))  AS avg_sale_price
FROM        Sales s
JOIN        Plot  pl ON pl.Plot_ID = s.Plot_ID
JOIN        Property p ON p.Property_ID = pl.Property_ID
WHERE       s.AgreedPrice > 2500000
GROUP BY    p.Property_ID, p.Name
HAVING      AVG(s.AgreedPrice) > 2600000
ORDER BY    avg_sale_price DESC;


-- Query08  SUBQUERY (correlated)
-- Q: Which sales were made above the current FIXED_PRICE for that plot?
--    (current = the record with EffectiveTo = 31-Dec-9999)

SELECT  s.Sale_ID,
        s.Plot_ID,
        s.AgreedPrice,
        s.SaleDate
FROM    Sales s
WHERE   s.AgreedPrice >
        NVL( ( SELECT ph.Amount
               FROM   PriceHistory ph
               WHERE  ph.Plot_ID   = s.Plot_ID
                 AND  ph.PriceType = 'FIXED_PRICE'
                 AND  ph.EffectiveTO = TO_DATE('31-Dec-9999','DD-Mon-YYYY')
             ), 0 )
ORDER BY s.SaleDate;



-- Query09  SUBQUERY (scalar subquery)
-- Q: Which customers paid an agreed price strictly above the overall average agreed price?

SELECT  c.Customer_ID,
        c.FullName,
        s.AgreedPrice,
        s.SaleDate
FROM        Sales    s
JOIN        Customer c ON c.Customer_ID = s.Customer_ID
WHERE s.AgreedPrice >
      ( SELECT AVG(AgreedPrice) FROM Sales )
ORDER BY s.AgreedPrice DESC;




-- Query10  COMPLEX CRITERIA (multiple AND/OR in WHERE)
-- Q: List sold plots that are either (North/East facing) OR have size > 4000 sqft,
--    and belong to an 'Active' property located in either Delhi or Bangalore.

SELECT  pl.Plot_ID,
        p.Name        AS property_name,
        p.Location,
        pl.SizeSqft,
        pl.Facing,
        pl.Status
FROM        Plot     pl
JOIN        Property p ON p.Property_ID = pl.Property_ID
WHERE  pl.Status = 'Sold'
  AND ( pl.Facing IN ('North','East')
        OR pl.SizeSqft > 4000 )
  AND p.Status   = 'Active'
  AND ( p.Location = 'Delhi'
        OR p.Location = 'Bangalore' )
ORDER BY p.Name, pl.PlotNo;



/*
Description of all the queries
1) 2 queries that use INNER JOIN. (Query01, Query02)

2) 1 query that uses OUTER JOIN. (Query03)

3) 1 query that uses SELF JOIN. (Query04)

4) 1 query that uses SET OPERATION (Query05 with MINUS operation).

5) 2 queries that obtain aggregates, with WHERE, GROUP BY, and HAVING each used at least once. (Query06 and Query07)

6) 2 queries that require subqueries. (Name them Query08, Query09)

7) 1 query that involves complex criteria in the Where clause. (Query10).
*/