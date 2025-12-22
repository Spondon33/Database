CREATE TABLE Students(
                         id number(10) primary key,
                         name varchar2(30),
                         dept varchar2(10),
                         cgpa number(3,2),
                         age number(2),
                         DOB Date,
                         DOA Date)

INSERT INTO Students VALUES(01, 'Spondon', 'CSE', '3.90', '22', TO_DATE('10-Oct-2003', 'DD-MM-YYYY'), TO_DATE('02-June-2024', 'DD-MM-YYYY'))

INSERT INTO Students VALUES(02, 'John', 'EEE', '3.80', '23', TO_DATE('15-June-2003', 'DD-MM-YYYY'), TO_DATE('02-July-2024', 'DD-MM-YYYY'))

INSERT INTO Students VALUES(03, 'Michael', 'BBA', '3.78', '20', TO_DATE('23-May-2003', 'DD-MM-YYYY'), TO_DATE('03-Aug-2024', 'DD-MM-YYYY'))

UPDATE STUDENTS
SET DOB = to_date('15-JUN-2002', 'DD-MM-YYYY')
WHERE ID = 02

UPDATE STUDENTS
SET DOB = to_date('23-May-2005', 'DD-MM-YYYY')
WHERE ID = 03

COMMIT
