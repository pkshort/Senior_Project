USE kevin;
SELECT s.School, s.Department, CONCAT(n.firstName, " ", n.lastName) as Name, n.profType
FROM tDept s
JOIN ProfToDept p on s.depID = p.deptID
JOIN tProfessors n on p.profID = n.profID
ORDER BY s.School, s.Department, n.firstName, n.lastName, n.profType;