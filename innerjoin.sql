DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Club;
CREATE TABLE IF NOT EXISTS Employee(
    id INT PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT
);

CREATE TABLE IF NOT EXISTS Club(
    id INT,
    club_name TEXT NOT NULL
);


INSERT INTO Employee(id,name,department) VALUES
(1,'John Doe', 'Tech'),
(2, 'Lamine Yamal', 'Logistics'),
(4, 'Jeremy David' , 'Printing'),
(6,'Bradley Barcola','Tech');

INSERT INTO Club(id,club_name)VALUES
(1,'Manchester City'),
(2,'Liverpool'),
(3, 'MFC'),
(4, 'Chelsea');

SELECT * FROM Employee;
SELECT * FROM Club;

SELECT Employee.name, Club.club_name
FROM Employee
INNER JOIN Club
ON Employee.id = Club.id;