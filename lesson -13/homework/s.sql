Easy Tasks
1 SELECT 
  CAST(EMPLOYEE_ID AS VARCHAR) + '-' + FIRST_NAME + ' ' + LAST_NAME AS FullName
FROM 
  Employees
WHERE 
  EMPLOYEE_ID = 100;

2 UPDATE Employees
SET PHONE_NUMBER = REPLACE(PHONE_NUMBER, '124', '999')
WHERE PHONE_NUMBER LIKE '%124%';

3  SELECT 
  FIRST_NAME AS "First Name",
  LENGTH(FIRST_NAME) AS "Name Length"
FROM Employees
WHERE FIRST_NAME LIKE 'A%' 
   OR FIRST_NAME LIKE 'J%' 
   OR FIRST_NAME LIKE 'M%'
ORDER BY FIRST_NAME;

4  SELECT 
  MANAGER_ID,
  SUM(SALARY) AS Total_Salary
FROM Employees
GROUP BY MANAGER_ID;

5 SELECT 
    Year1,
    GREATEST(Max1, Max2, Max3) AS HighestValue
FROM 
    TestMax;

6  SELECT *
FROM Cinema
WHERE Id % 2 = 1 AND Description <> 'boring';

7  SELECT *
FROM SingleOrder
ORDER BY (Id = 0), Id;

8 SELECT 
    COALESCE(Column1, Column2, Column3, Column4) AS FirstNonNull
FROM Person;

medium tasks
1 SELECT
  FullName,
  SUBSTRING_INDEX(FullName, ' ', 1) AS FirstName,
  SUBSTRING_INDEX(SUBSTRING_INDEX(FullName, ' ', 2), ' ', -1) AS MiddleName,
  SUBSTRING_INDEX(FullName, ' ', -1) AS LastName
FROM Students;

2 SELECT *
FROM Orders
WHERE State = 'Texas'
  AND CustomerID IN (
    SELECT DISTINCT CustomerID
    FROM Orders
    WHERE State = 'California'
  );

3 SELECT Category, GROUP_CONCAT(Value ORDER BY Value SEPARATOR ', ') AS ConcatenatedValues
FROM DMLTable
GROUP BY Category;

4 SELECT *
FROM Employees
WHERE LENGTH(CONCAT(FirstName, LastName)) - LENGTH(REPLACE(CONCAT(FirstName, LastName), 'a', '')) >= 3;

5  SELECT 
  DepartmentID,
  COUNT(*) AS TotalEmployees,
  SUM(CASE WHEN YearsWithCompany > 3 THEN 1 ELSE 0 END) AS EmployeesOver3Years,
  ROUND(100.0 * SUM(CASE WHEN YearsWithCompany > 3 THEN 1 ELSE 0 END) / COUNT(*), 2) AS PercentOver3Years
FROM Employees
GROUP BY DepartmentID;

6 SELECT JobDescription,
       MAX_BY(SpacemanID, ExperienceYears) AS MostExperienced,
       MIN_BY(SpacemanID, ExperienceYears) AS LeastExperienced
FROM Personal
GROUP BY JobDescription;

difficult tasks

1 WITH RECURSIVE chars AS (
  SELECT 1 AS pos, SUBSTRING('tf56sd#%OqH', 1, 1) AS ch
  UNION ALL
  SELECT pos + 1, SUBSTRING('tf56sd#%OqH', pos + 1, 1)
  FROM chars
  WHERE pos < LENGTH('tf56sd#%OqH')
)
SELECT
  GROUP_CONCAT(CASE WHEN ch REGEXP '[A-Z]' THEN ch END) AS UppercaseLetters,
  GROUP_CONCAT(CASE WHEN ch REGEXP '[a-z]' THEN ch END) AS LowercaseLetters,
  GROUP_CONCAT(CASE WHEN ch REGEXP '[0-9]' THEN ch END) AS Numbers,
  GROUP_CONCAT(CASE WHEN ch NOT REGEXP '[A-Za-z0-9]' THEN ch END) AS OtherCharacters
FROM chars;

2  SELECT 
  StudentID,
  Score,
  SUM(Score) OVER (ORDER BY StudentID) AS RunningTotal
FROM Students;

3  SELECT 
  EquationText,
  CAST(SUBSTRING_INDEX(EquationText, '+', 1) AS UNSIGNED) +
  CAST(SUBSTRING_INDEX(EquationText, '+', -1) AS UNSIGNED) AS Result
FROM Equations;

4  SELECT *
FROM Student
WHERE Birthdate IN (
  SELECT Birthdate
  FROM Student
  GROUP BY Birthdate
  HAVING COUNT(*) > 1
);

5  SELECT 
  LEAST(PlayerA, PlayerB) AS Player1,
  GREATEST(PlayerA, PlayerB) AS Player2,
  SUM(Score) AS TotalScore
FROM PlayerScores
GROUP BY 
  LEAST(PlayerA, PlayerB),
  GREATEST(PlayerA, PlayerB);


