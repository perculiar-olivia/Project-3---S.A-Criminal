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
SELECT * FROM sa_records
WHERE risklevel='high' OR risklevel='critical'

--7. Calculate the average Financial Score of all suspects.
SELECT AVG(financialscore) AS average_score
FROM sa_records 

--8. Find the highest Estimated Fraud Amount recorded.
SELECT MAX(estimatedfraudamount_zar) AS amount_in_rands
FROM sa_records

--9. Retrieve the top 10 cases with the highest Estimated Fraud Amount.
SELECT * FROM sa_records
ORDER BY estimatedfraudamount_zar DESC
LIMIT 10

--10. Display all cases where the suspect was arrested.
SELECT * FROM sa_records
WHERE arrested='yes'

--11. Count how many suspects were arrested versus not arrested.
SELECT arrested, COUNT(DISTINCT recordid) AS total_number
FROM sa_records
GROUP BY arrested

--12. Count the number of cases associated with each bank.
SELECT bankinvolved, COUNT(DISTINCT recordid) AS no_of_cases
FROM sa_records
GROUP BY bankinvolved

--13. Calculate the total Estimated Fraud Amount per province.
SELECT province, SUM(estimatedfraudamount_zar) AS total
FROM sa_records
GROUP BY province

--14. Retrieve all suspects older than 50 years.
SELECT * FROM sa_records
WHERE age>50

--15. Calculate the average age of suspects per province.
SELECT province, AVG(age) AS average_age
FROM sa_records
GROUP BY province

--16. Display all cases recorded from 2020 onwards.
SELECT * FROM sa_records
WHERE courtdate>=2020-01-01

--17. Count how many cases resulted in a Convicted status.
SELECT COUNT(recordid) AS total
FROM sa_records
WHERE casestatus='convicted'

--18. Retrieve all suspects with more than three previous offenses.
SELECT * FROM sa_records
WHERE previousoffenses>=3

--19. Show the distribution of cases by Risk Level.
SELECT risklevel, COUNT(DISTINCT recordid) AS distribution
FROM sa_records
GROUP BY risklevel

--20. Calculate the total Estimated Fraud Amount across all cases.
SELECT SUM(estimatedfraudamount_zar) AS total
FROM sa_records

--21. Identify the province with the highest number of cases.