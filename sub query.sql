create database subqry;
use subqry;
drop database subqry;
CREATE TABLE Doctors(Doctor_ID int,
Doctor_name varchar(30),
Specialty varchar(20),
Day_Available varchar(20),
Contact_No varchar(13),
Experience int);


CREATE TABLE Patients(Patient_ID int,
Patient_name varchar(20),
Doctor_name varchar(30),
Treatment_date varchar(10),
Ward_no int,
Condtion varchar(20),
Fees int);

CREATE TABLE Timetable(Day varchar(20),
Doctor_name varchar(20),
Ward_no int,
Time varchar(20));

CREATE TABLE Ward(Ward_no int,
Floor int,
Beds int,
Nurses int);

CREATE TABLE Medicines(Date varchar(10),
Doctor_name varchar(30),
Ward_no int,
Injections int,
Medicines int);

INSERT INTO Doctors VALUES(1,'Dr.Harsh','Dietician','Monday','9876543210',5);
INSERT INTO Doctors VALUES(2,'Dr.Simran','Cardiologist','Tuesday','995671866',6);
INSERT INTO Doctors VALUES(3,'Dr.Abhishek','Gynecologist','Monday','8756128765',4);
INSERT INTO Doctors VALUES(4,'Dr.Tanuja','Dietician','Tuesday','9875617286',2);
INSERT INTO Doctors VALUES(1,'Dr.Vedant','Cardiologist','Monday','678195278',10);
INSERT INTO Doctors VALUES(5,'Dr.Sanika','Gynecologist','Monday','9876524516',2);
INSERT INTO Doctors VALUES(6,'Dr.Nitish','Neurologist','Saturday','7651862542',4);
INSERT INTO Doctors VALUES(7,'Dr.Sanskriti','Dietician','Tuesday','9876545678',5);
INSERT INTO Doctors VALUES(8,'Dr.Pranali','Gynecologist','Monday','7689018765',6);
INSERT INTO Doctors VALUES(9,'Dr.Paavana','Dietician','Sunday','6789156278',10);
INSERT INTO Doctors VALUES(10,'Dr.Devang','Cardiologist','Monday','18976254187',10);
INSERT INTO Doctors VALUES(11,'Dr.Rutuja','Dietician','Wednesday','18726578976',5);
INSERT INTO Doctors VALUES(12,'Dr.Gayatri','Neurologist','Sunday','98735678176',6);
INSERT INTO Doctors VALUES(13,'Dr.Amar','Dietician','Thursday','7890876543',5);
INSERT INTO Doctors VALUES(14,'Dr.Aditya','Cardiologist','Friday','6789098765',4);
INSERT INTO Doctors VALUES(15,'Dr.Salil','Dietician','Tuesday','9872456789',2);
INSERT INTO Doctors VALUES(16,'Dr.Prajwal','Gynecologist','Saturday','9865435671',6);
INSERT INTO Doctors VALUES(17,'Dr.Sami','Cardiologist','Friday','9876543245',5);
INSERT INTO Doctors VALUES(18,'Dr.Sakshi','Neurologist','Wednesday','9876547892',5);
INSERT INTO Doctors VALUES(19,'Dr.Aadinath','Gynecologist','Thursday','9875672897',10);

INSERT INTO Patients VALUES(1,'shruti','Dr.Simran','01-02-22',1,'Good',200);
INSERT INTO Patients VALUES(2,'rahul','Dr.Simran','01-02-22',1,'Good',200);
INSERT INTO Patients VALUES(3,'rohit','Dr.Abhishek','01-02-22',2,'Intermediate',400);
INSERT INTO Patients VALUES(4,'raj','Dr.Tanuja','01-02-22',3,'Good',200);
INSERT INTO Patients VALUES(5,'roshan','Dr.Simran','01-02-22',1,'Intermediate',200);
INSERT INTO Patients VALUES(6,'nupur','Dr.Harsh','02-02-22',1,'Bad',100);
INSERT INTO Patients VALUES(7,'sahil','Dr.Abhishek','02-02-22',2,'Better',600);
INSERT INTO Patients VALUES(8,'shreya','Dr.Vedant','02-02-22',5,'Good',200);
INSERT INTO Patients VALUES(9,'tanvi','Dr.Tanuja','03-02-22',3,'Bad',500);
INSERT INTO Patients VALUES(10,'dipti','Dr.Simran','03-02-22',1,'Intermediate',400);
INSERT INTO Patients VALUES(11,'snehal','Dr.Abhishek','03-02-22',2,'Better',100);
INSERT INTO Patients VALUES(12,'abhijit','Dr.Simran','04-02-22',1,'Good',200);
INSERT INTO Patients VALUES(13,'anam','Dr.Vedant','04-02-22',5,'Bad',500);
INSERT INTO Patients VALUES(14,'sanyukta','Dr.Simran','04-02-22',1,'Intermediate',500);
INSERT INTO Patients VALUES(15,'smruti','Dr.Simran','01-03-22',1,'Good',600);
INSERT INTO Patients VALUES(16,'siddhesh','Dr.Abhishek','01-03-22',2,'Good',200);
INSERT INTO Patients VALUES(17,'krutik', 'Dr.Vedant','01-03-22',5,'Bad',500);
INSERT INTO Patients VALUES(18,'jay','Dr.Tanuja','02-03-22',3,'Good',500);
INSERT INTO Patients VALUES(19,'jayant','Dr.Simran','02-03-22',1,'Intermediate',200);
INSERT INTO Patients VALUES(20,'vineet','Dr.Vedant','01-04-22',5,'Better',400);
INSERT INTO Patients VALUES(21,'riddhi','Dr.Abhishek','01-04-22',2,'Bad',200);
INSERT INTO Patients VALUES(22,'vishaka','Dr.Harsh','02-05-22',4,'Good',100);
INSERT INTO Patients VALUES(23,'sarthak','Dr.Simran','02-05-22',1,'Good',400);
INSERT INTO Patients VALUES(24,'yash','Dr.Vedant','02-04-22',5,'Better',500);
INSERT INTO Patients VALUES(25,'suraj','Dr.Sanika','04-05-22',6,'Good',200);
INSERT INTO Timetable VALUES('Monday','Dr.Harsh',4,'10am');
INSERT INTO Timetable VALUES('Tuesday','Dr.Simran',1,'10am');
INSERT INTO Timetable VALUES('Wednesday','Dr.Rutuja',7,'11am');
INSERT INTO Timetable VALUES('Thursday','Dr.Amar',8,'1pm');
INSERT INTO Timetable VALUES('Friday','Dr.Aditya',9,'3pm');
INSERT INTO Timetable VALUES('Saturday','Dr.Prajwal',10,'11am');
INSERT INTO Timetable VALUES('Sunday','Dr.Paavana',11,'4pm');
INSERT INTO Timetable VALUES('Monday','Dr.Sanika',6,'10am');
INSERT INTO Timetable VALUES('Tuesday','Dr.Tanuja',3,'4am');
INSERT INTO Timetable VALUES('Wednesday','Dr.Sakshi',12,'10pm');
INSERT INTO Timetable VALUES('Thursday','Dr.Aadinath',13,'8am');


INSERT INTO Ward VALUES(1,1,10,3);
INSERT INTO Ward VALUES(2,1,12,4);
INSERT INTO Ward VALUES(3,1,13,3);
INSERT INTO Ward VALUES(4,1,10,3);
INSERT INTO Ward VALUES(5,2,9,2);
INSERT INTO Ward VALUES(6,2,8,3);
INSERT INTO Ward VALUES(7,2,10,4);
INSERT INTO Ward VALUES(8,2,9,3);
INSERT INTO Ward VALUES(9,3,13,2);
INSERT INTO Ward VALUES(10,3,10,3);
INSERT INTO Ward VALUES(11,3,13,2);
INSERT INTO Ward VALUES(12,4,10,3);
INSERT INTO Ward VALUES(13,4,9,4);

INSERT INTO Medicines VALUES('01-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-02-22','Dr.Harsh',4,30,50);
INSERT INTO Medicines VALUES('01-02-22','Dr.Vedant',5,10,30);
INSERT INTO Medicines VALUES('02-02-22','Dr.Abhishek',2,20,40);
INSERT INTO Medicines VALUES('02-02-22','Dr.Tanuja',3,40,60);
INSERT INTO Medicines VALUES('02-02-22','Dr.Sanika',6,10,35);
INSERT INTO Medicines VALUES('02-02-22','Dr.Rutuja',7,34,67);
INSERT INTO Medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('03-02-22','Dr.Harsh',4,15,43);
INSERT INTO Medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-03-22','Dr.Vedant',5,12,24);
INSERT INTO Medicines VALUES('01-03-22','Dr.Simran',1,23,34);
INSERT INTO Medicines VALUES('01-03-22','Dr.Abhishek',2,33,45);
INSERT INTO Medicines VALUES('02-03-22','Dr.Harsh',4,22,43);
INSERT INTO Medicines VALUES('02-03-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-04-22','Dr.Vedant',5,20,40);
INSERT INTO Medicines VALUES('01-04-22','Dr.Tanuja',3,22,45);

-- Q1. Display patient names recommending Dr.Simran.

SELECT Patient_name FROM Patients
WHERE Doctor_name = "Dr.Simran";

-- Q2. Display number of patients treated by the same doctor and in the same ward.

SELECT Ward_no,Doctor_name,COUNT(Patient_ID) FROM Patients
GROUP BY Ward_no,Doctor_name
ORDER BY COUNT(Ward_no) DESC;

-- Q3. Display the average fees taken by each Doctor.

SELECT Doctor_name, AVG(Fees) FROM Patients
GROUP BY Doctor_name
ORDER BY Doctor_name;

-- Q4. Which specialist has used the maximum number of injections on date ‘01-02-22’?
SELECT d.Specialty, MAX(m.Injections)
FROM Medicines m
JOIN Doctors d ON m.Doctor_name = d.Doctor_name
WHERE m.Date = '01-02-22'
GROUP BY d.Specialty
ORDER BY d.Specialty DESC;

-- Q5. How many nurses were present on Wednesday with Dr.Rutuja? 
SELECT w.Nurses,t.Doctor_name  FROM Timetable t
JOIN Ward w ON t.Ward_no = w.Ward_no
WHERE t.Day = 'Wednesday' AND t.Doctor_name = 'Dr.Rutuja'
GROUP BY w.Nurses, t.Doctor_name;

-- Q6 At what time is Dr.Rutuja available on Wednesday?

SELECT Time,Doctor_name FROM Timetable
WHERE Day= 'Wednesday' AND Doctor_name = 'Dr.Rutuja'
GROUP BY Time,Doctor_name;

-- Q7. Count of patients with good condition treated by each doctor?

SELECT Doctor_name, COUNT(*) FROM Patients
WHERE Condtion = 'good'
GROUP BY Doctor_name
ORDER BY Doctor_name,COUNT(*) ASC;

-- Q8. Wards on which floor has used the minimum number of medicines on date ‘02-02-22’?

SELECT w.Floor,MIN(M.Medicines) FROM Medicines m
JOIN Ward w ON m.Ward_no = w.Ward_no
WHERE m.Date = '02-02-22'
GROUP BY w.Floor
ORDER BY MIN(M.Medicines) ASC
LIMIT 1;

-- Q9. Display ward no. having minimum number of beds.

SELECT Ward_no,MIN(Beds) FROM Ward
GROUP BY Ward_no
ORDER BY MIN(Beds)
LIMIT 1;

-- Q10. Display total experience of doctors with specialty as ‘Cardiologist’. 
SELECT Specialty,SUM(Experience) FROM Doctors
WHERE Specialty = 'Cardiologist'
GROUP BY Specialty;

-- Q11. Display Doctor names and their corresponding floors.
SELECT D.Doctor_name, w.Floor FROM Doctors D
JOIN Timetable T ON D.Doctor_name = T.Doctor_name
JOIN Ward w ON T.Ward_no = w.Ward_no
GROUP BY D.Doctor_name,w.Floor;

-- Q12. Display average Number of beds on each floor.
SELECT Floor,AVG(Beds) FROM Ward
GROUP BY Floor
LIMIT 4 ;

-- Q13. Display Doctor names and their ward numbers from Patients and Timetable.
SELECT Doctor_name, Ward_no FROM Patients
UNION 
SELECT Doctor_name, Ward_no FROM Timetable
ORDER BY Doctor_name ASC;

-- Q14. Display count of patients treated on each day. 
SELECT Treatment_date, COUNT(Patient_name)
FROM Patients
GROUP BY Treatment_date;

-- Q15. Display count of patients from each condition type.
SELECT Condtion, COUNT(Patient_name)
FROM Patients
GROUP BY Condtion
ORDER BY Condtion ASC;

-- Q16. Display the total number of injections and medicines used by each doctor for doctor having doctor id greater than 3?

SELECT m.Doctor_name, 
       SUM(m.Injections),
       SUM(m.Medicines)
FROM Medicines m
JOIN Doctors d ON m.Doctor_name = d.Doctor_name
WHERE d.Doctor_ID > 3
GROUP BY m.Doctor_name 
ORDER BY m.Doctor_name;

-- Q17. Display the medicines consumed on each day starting from most to least.

SELECT Date, SUM(Medicines) FROM Medicines
GROUP BY Date
ORDER BY SUM(Medicines) DESC;

-- Q18. Which ward has treated the most number of patients who went in good condition?

SELECT Ward_no, COUNT(Condtion) FROM Patients
WHERE Condtion =  'good'
GROUP BY Ward_no;

-- Q19. Give the doctor specialities available at 10am. 

SELECT d.Specialty ,Time FROM Doctors d
JOIN Timetable T ON d.Doctor_name = T.Doctor_name
WHERE Time = '10am';

-- Q20. Display the number of nurses using more than 20 injections in each ward.
SELECT  w.Ward_no, w.Nurses, m.Injections FROM Ward w
JOIN Medicines m ON w.Ward_no = m.Ward_no
WHERE m.Injections > 20;

-- Q21. Display number of patients treated by doctors having more than 3 years of experience in each ward.
SELECT p.Ward_no, COUNT(p.Patient_ID),d.Experience FROM Patients p
JOIN Doctors d ON p.Doctor_name = d.Doctor_name
WHERE d.Experience > 3
GROUP BY p.Ward_no,d.Experience
ORDER BY d.Experience ASC;

-- Q22. Display the contact nos. each patient should contact in case of further assistance.
SELECT Patient_ID,P.Patient_name,d.Contact_No FROM Doctors d
JOIN Patients P ON d.Doctor_name = P.Doctor_name
GROUP BY Patient_ID,P.Patient_name,d.Contact_No;

-- Q23. How many doctors are available at each time of the day?

SELECT Time, COUNT(Doctor_name) FROM Timetable
GROUP BY Time
ORDER BY Time ASC;

-- Q24. Display Doctor_ID and names treating patients having 's' as their initial.
SELECT d.Doctor_ID,d.Doctor_name,P.Patient_name  FROM Doctors d
JOIN Patients P ON d.Doctor_name = P.Doctor_name
WHERE P.Patient_name LIKE 'S%';

-- Q25. Which doctor can see a patient if Dr. Simran is not available?

SELECT Day_Available,Doctor_name
FROM Doctors
WHERE Doctor_ID BETWEEN 1 AND 4 AND Day_Available = 'Tuesday' AND Doctor_name <> 'Dr. Simran'
ORDER BY Doctor_ID DESC
LIMIT 1;





