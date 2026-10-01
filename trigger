--STORED PROCEDURES
CREATE PROCEDURE SeeEMP AS
BEGIN
SELECT * FROM Employee;
END;

--data show
SeeEmp;

CREATE PROCEDURE SeeEMP6 AS
BEGIN
SELECT * FROM Employee where id=6;
END;

-- 1 row ka data dekhna hai
SeeEMP6;

--INSERT DATA
CREATE PROCEDURE AddEmp @Name varchar(255), @desg VARCHAR(255), @salary INT, @city varchar(255),
@depid INT
AS
BEGIN
INSERT INTO Employee VALUES (@Name, @desg, @salary, @city, @depid)
SELECT * FROM Employee
END;

AddEmp @Name='Tahir', @desg= 'Manager', @salary= 158000, @city= 'Islamabad', @depid=6;
AddEmp @Name='Saima', @desg= 'Marketing Head', @salary= 254000, @city= 'Karachi', @depid=2;

--DELETE
CREATE PROCEDURE DelEmp14 AS BEGIN DELETE FROM Employee where id=14;
END;

DelEmp14;

-- UPDATE
CREATE PROCEDURE UpdateEmp15 AS BEGIN Update Employee set empName= 'Tahir', designation='Manager' where id=15;
END;

 UpdateEmp15;


 -- TRIGGER
 CREATE TRIGGER AddEmp_trigger ON Employee FOR INSERT 
 AS BEGIN 
 print('a new employee added succesfully.') 
 END;

AddEmp @Name='Karim', @desg= 'Seo Developer', @salary= 126500, @city= 'Lahore', @depid=1;


