USE kevin;
CREATE TABLE tDept
SELECT c.name as School, s.name as Department, s.id as depID
FROM DeptToSchool e
JOIN Dept s on e.DeptID = s.id
JOIN School c on e.schoolID = c.id;
