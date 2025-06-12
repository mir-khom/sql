Puzzle 1: Finding Distinct Values
Question: Explain at least two ways to find distinct values based on two columns.

Input table (InputTbl):
SELECT DISTINCT column1, column2
FROM InputTbl;

SELECT column1, column2
FROM InputTbl
GROUP BY column1, column2;
uzzle 2: Removing Rows with All Zeroes
Question: If all the columns have zero values, then don’t show that row. In this case, we have to remove the 5th row while selecting da

SELECT *
FROM TestMultipleZero
WHERE NOT (ISNULL(A, 0) = 0 AND ISNULL(B, 0) = 0 AND ISNULL(C, 0) = 0 AND ISNULL(D, 0) = 0);

🔹 Puzzle 3: Find those with odd ids
sql
Копировать
Редактировать
SELECT *
FROM section1
WHERE id % 2 = 1;

🔹 Puzzle 4: Person with the smallest id
sql
Копировать
Редактировать
SELECT *
FROM section1
WHERE id = (SELECT MIN(id) FROM section1);

🔹 Puzzle 5: Person with the highest id
sql
Копировать
Редактировать
SELECT *
FROM section1
WHERE id = (SELECT MAX(id) FROM section1);

🔹 Puzzle 6: People whose name starts with 'b' (case-insensitive)
sql
Копировать
Редактировать
SELECT *
FROM section1
WHERE LOWER(name) LIKE 'b%';
✅ Result: Matches names like 'Been', 'Bruno', etc.


🔹 Puzzle 7: Return rows where the code contains the literal underscore _
sql
Копировать
Редактировать
SELECT *
FROM ProductCodes

  
WHERE Code LIKE '%\_%' ESCAPE '\';
