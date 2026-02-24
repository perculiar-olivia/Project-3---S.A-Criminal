--1. Display all records from the CriminalCases table.
SELECT * FROM sa_records

--2. Count the total number of cases in the table.
SELECT COUNT(recordid) FROM sa_records

--3. Count the number of cases in each province.
SELECT province, COUNT(DISTINCT recordid) AS number_of_cases FROM sa_records 
GROUP BY province

--4. Retrieve all cases where the crime type is Fraud.
SELECT COUNT(crimetype) FROM sa_records
WHERE crimetype='fraud'

--5. Count the number of cases for each crime type.
SELECT crimetype, COUNT(recordid) AS number_of_cases FROM sa_records 
GROUP BY crimetype

--6. Display all cases classified as High or Critical risk.