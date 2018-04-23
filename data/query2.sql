USE kevin;
CREATE TABLE tProfessors
SELECT n.profID, n.firstName, n.lastName, t.name as profType  
FROM ProfToProfType p
JOIN Professor n on p.profID = n.profID
JOIN ProfType t on p.profTypeID = t.id;
