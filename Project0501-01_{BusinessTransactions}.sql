--1. Who are the staff members that are part of the science department and are participating in at least one activity?

SELECT DISTINCT s.stfFirstName+' '+s.stfLastName AS 'Staff Name', a.actDescription
FROM [SilverOak.Staff] s, [SilverOak.Department] d, [SilverOak.Participate] p, [SilverOak.Activity] a 
WHERE d.dptId = s.dptId AND s.stfId = p.stfId AND p.actId = a.actId AND d.dptName = 'Science';

--2. What is the number of teaching and non-teaching staff?

SELECT stfType, COUNT(stfType) AS 'Count of Staff'
FROM [SilverOak.Staff] 
GROUP BY stfType;

--3. What are all the details of staff members who teach the 3rd grade?

SELECT DISTINCT s.stfFirstName, s.stfLastName 
FROM [SilverOak.Staff] s, [SilverOak.Student] st, [SilverOak.Teach] t 
WHERE s.stfId = t.stfId AND t.stdId = st.stdId AND st.stdClass = '3' 
ORDER BY s.stfLastName, s.stfFirstName;

--4. What is the number of girls and boys in each class?

SELECT stdClass, stdGender, COUNT(stdGender) AS 'Number of Students'
FROM [SilverOak.Student]  
GROUP BY stdClass, stdGender 
ORDER BY stdClass, stdGender;

--5. What is the average age of each class?

SELECT stdClass, AVG(DATEDIFF(YEAR, stdDateOfBirth, SYSDATETIME())) AS 'Average Age'
FROM [SilverOak.Student]  
GROUP BY stdClass
ORDER BY stdClass;

--6. What is the number of students scoring A- and above in Maths?

SELECT st.stdClass, COUNT(*) AS 'Number of Students' 
FROM [SilverOak.Student] st, [SilverOak.Subject] sb, [SilverOak.Score] sc 
WHERE st.stdId = sc.stdId AND sc.sbjId = sb.sbjId AND sb.sbjTitle = 'Mathematics' AND sc.grade IN ('A+','A','A-')
GROUP BY st.stdClass
ORDER BY st.stdClass;

--7. What is the number of students in each class who scored below A grade in subjects taught by Chandler Bing?

SELECT st.stdClass, COUNT(*) AS 'Number of Students' 
FROM [SilverOak.Student] st, [SilverOak.Teach] t, [SilverOak.Score] sc, [SilverOak.Staff] s 
WHERE st.stdId = t.stdId AND t.stfId = s.stfId AND st.stdId = sc.stdId AND 
s.stfFirstName+' '+s.stfLastName = 'Chandler Bing' AND sc.grade NOT IN ('A+', 'A')
GROUP BY st.stdClass
ORDER BY st.stdClass;
