CREATE VIEW StudentGrades AS 
SELECT st.stdId, st.stdLastName, st.stdFirstName, sb.sbjTitle, sc.grade
FROM [SilverOak.Student] st 
INNER JOIN [SilverOak.Score] sc
ON st.stdId = sc.stdId INNER JOIN [SilverOak.Subject] sb ON sb.sbjId = sc.sbjId;

GO;

SELECT * FROM StudentGrades;