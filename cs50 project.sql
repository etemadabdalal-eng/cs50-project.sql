create database Project;

create table Patients(
Name text Not Null,
Age int Not Null,
Gender text,
Pationts_Id int Not null,
primary key (Pationts_Id),
History_OF_Heart_Disease text)

insert into Patients(
Name,Age,Gender,Pationts_Id,History_OF_Heart_Disease)
values('Ahmed Ali',65,'Male',1,'Yes'),
      ('Mona Hassan',58,'Female',2,'No'),
      ('Omar Mohamed',72,'Male',3,'Yes'),
      ('Sara Ahmed',61,'Female',4,'Yes'),
      ('Youssef Mahmoud',69,'Male',5,'No'),
      ('Nour Adel',54,'Female',6,'No'),
      ('Karima Samir',47,'Female',7,'Yes'),
      ('Amr Mostafa',63,'Male',8,'No'),
      ('Mohamed Ashraf',76,'Male',9,'Yes'),
      ('Menna Khaled',52,'Female',10,'No'),
      ('Ali Hassan',59,'Male',11,'Yes'),
      ('Salma Tarek',68,'Female',12,'Yes'),
      ('Hana Mahmoud',45,'Female',13,'No'),
      ('Omar Khaled',71,'Male',14,'Yes'),
      ('Farida Ahmed',56,'Female',15,'No'),
      ('Mahmoud Adel',64,'Male',16,'Yes'),
      ('Aya Mohamed',50,'Female',17,'No'),
      ('Khaled Mostafa',73,'Male',18,'Yes'),
      ('Yassin Ashraf',62,'Male',19,'Yes'),
      ('Jana Samir',57,'Female',20,'No'),
      ('Mariam Tarek',49,'Female',21,'No'),
      ('Hassan Mahmoud',66,'Male',22,'Yes'),
      ('Ibrahim Hassan',70,'Male',23,'Yes'),
      ('Nourhan Ali',53,'Female',24,'Yes'),
      ('Tamer Mohamed',60,'Male',25,'No'),
      ('Adam Samir',75,'Male',26,'Yes'),
      ('Malak Ahmed',48,'Female',27,'No'),
      ('Mostafa Tarek',67,'Male',28,'Yes'),
      ('Nada Khaled',55,'Female',29,'Yes'),
      ('Abdelrahman Ali',74,'Male',30,'No'),
      ('Habiba Adel',51,'Female',31,'Yes'),
      ('Ziad Khaled',69,'Male',32,'No'),
      ('Reem Mostafa',43,'Female',33,'Yes'),
      ('Hossam Adel',58,'Male',34,'No'),
      ('Esraa Hassan',77,'Female',35,'No'),
      ('Ahmed Mohammed',46,'Male',36,'No'),
      ('Mahmoud Ali',63,'Male',37,'Yes'),
      ('Dina Mahmoud',52,'Female',38,'No'),
      ('Seif Ahmed',70,'Male',39,'Yes'),
      ('Laila Ashraf',61,'Female',40,'No')

create table Pacemaker_Implantation(
Implant_Id int Not Null,
Pationts_Id int Not null,
Implant_Date Date Not Null,
Pacing_Mode text,
RV_Pacing_Burden float,
primary key (Implant_Id),
Foreign key(Pationts_Id)
References Patients(Pationts_Id))

insert into Pacemaker_Implantation
(Implant_Id, Pationts_Id, Implant_Date, Pacing_Mode, RV_Pacing_Burden)
VALUES
(101, 1, '2024-01-15', 'DDD', 75.50),
(102, 2, '2024-02-20', 'VVI', 60.25),
(103, 3, '2024-03-10', 'DDD', 82.75),
(104, 4, '2024-04-05', 'AAI', 45.30),
(105, 5, '2024-05-18', 'DDD', 90.10),
(106, 6, '2024-03-08', 'DDD', 85.50),
(107, 7, '2024-06-10', 'VVI', 66.25),
(108, 8, '2024-07-18', 'DDD', 80.75),
(109, 9, '2024-08-05', 'AAI', 48.31),
(110, 10, '2024-09-22', 'DDD', 95.11),
(111, 11, '2024-10-14', 'DDD', 78.57),
(112, 12, '2024-11-30', 'VVI', 67.27),
(113, 13, '2024-12-17', 'DDD', 77.76),
(114, 14, '2024-01-09', 'AAI', 55.35),
(115, 15, '2024-02-24', 'DDD', 67.16),
(116, 16, '2024-03-15', 'DDD', 74.54),
(117, 17, '2024-04-07', 'VVI', 63.25),
(118, 18, '2024-05-19', 'DDD', 89.75),
(119, 19, '2024-06-28', 'AAI', 40.34),
(120, 20, '2024-07-11', 'DDD', 91.15),
(121, 21, '2024-08-23', 'DDD', 79.53),
(122, 22, '2024-09-06', 'VVI', 60.24),
(123, 23, '2025-10-18', 'DDD', 88.74),
(124, 24, '2025-11-09', 'AAI', 44.33),
(125, 25, '2025-12-21', 'DDD', 98.12),
(126, 26, '2025-01-13', 'DDD', 76.52),
(127, 27, '2025-02-27', 'VVI', 62.23),
(128, 28, '2025-03-16', 'DDD', 81.73),
(129, 29, '2025-04-05', 'AAI', 41.31),
(130, 30, '2025-05-22', 'DDD', 92.11),
(131, 31, '2025-01-15', 'DDD', 71.51),
(132, 32, '2025-06-14', 'VVI', 61.22),
(133, 33, '2025-07-30', 'DDD', 83.72),
(134, 34, '2025-04-19', 'AAI', 42.30),
(135, 35, '2025-05-25', 'DDD', 93.10),
(136, 36, '2025-06-15', 'DDD', 73.50),
(137, 37, '2025-09-20', 'VVI', 62.21),
(138, 38, '2025-10-10', 'DDD', 84.71),
(139, 39, '2025-03-05', 'AAI', 43.39),
(140, 40, '2025-11-18', 'DDD', 90.12);


create table Heart_Function_FollowUp(
FollowUp_Id int Not Null,
Pationts_Id int Not null,
Checkup_Date Date Not Null,
Ejection_Fraction_EF float,
Sympotoms_Dyspnea text,
Has_Edema text,
primary key (FollowUp_Id ),
Foreign key(Pationts_Id)
References Patients(Pationts_Id))

insert into Heart_Function_FollowUp
(FollowUp_Id, Pationts_Id, Checkup_Date, Ejection_Fraction_EF, Sympotoms_Dyspnea, Has_Edema)
VALUES
(1, 1, '2024-01-05', 55.00, 'Mild','No'),
(2, 1, '2024-04-05', 57.00, 'Mild','No'),
(3, 1, '2024-08-05', 60.00, 'None','No'),
(4, 2, '2024-01-12', 48.00, 'Moderate','Yes'),
(5, 3, '2024-01-20', 60.00, 'None','No'),
(6, 3, '2024-06-20', 62.00, 'None','No'),
(7, 4, '2024-02-03', 45.00, 'Severe','Yes'),
(8, 4, '2024-06-03', 48.00, 'Moderate','Yes'),
(9, 4, '2024-10-03', 52.00, 'Mild','No'),
(10, 5, '2024-02-15', 52.00, 'Mild','No'),
(11, 6, '2024-02-25', 58.00, 'None','No'),
(12, 6, '2024-07-25', 60.00, 'None','No'),
(13, 7, '2024-03-08', 40.00, 'Severe','Yes'),
(14, 8, '2024-03-19', 62.00, 'None','No'),
(15, 8, '2024-09-19', 64.00, 'None','No'),
(16, 9, '2024-03-28', 50.00, 'Moderate','No'),
(17, 10, '2024-04-06', 47.00, 'Mild','Yes'),
(18, 10, '2024-10-06', 50.00, 'Mild','No'),
(19, 11, '2024-04-18', 65.00, 'None','No'),
(20, 12, '2024-04-29', 54.00, 'Mild','No'),
(21, 12, '2024-08-29', 57.00, 'None','No'),
(22, 13, '2024-05-10', 42.00, 'Severe','Yes'),
(23, 13, '2024-08-10', 46.00, 'Moderate','Yes'),
(24, 13, '2024-11-10', 50.00, 'Mild', 'No'),
(25, 14, '2024-05-21', 57.00, 'Moderate','No'),
(26, 15, '2024-06-02', 61.00, 'None','No'),
(27, 15, '2024-10-02', 63.00, 'None','No'),
(28, 16, '2024-06-14', 49.00, 'Moderate','Yes'),
(29, 17, '2024-06-25', 53.00, 'Mild','No'),
(30, 18, '2024-07-07', 44.00, 'Severe','Yes'),
(31, 18, '2024-10-07', 47.00, 'Moderate','Yes'),
(32, 19, '2024-07-18', 59.00, 'None','No'),
(33, 20, '2024-07-30', 51.00, 'Mild','No'),
(34, 20, '2024-11-30', 55.00, 'None','No'),
(35, 21, '2024-08-09', 63.00, 'None','No'),
(36, 22, '2024-08-20', 46.00, 'Moderate','Yes'),
(37, 22, '2024-12-20', 50.00, 'Mild','No'),
(38, 23, '2024-09-01', 56.00, 'Mild','No'),
(39, 24, '2024-09-13', 41.00, 'Severe','Yes'),
(40, 24, '2024-12-13', 45.00, 'Moderate','Yes'),
(41, 25, '2024-09-24', 60.00, 'None', 'No'),
(42, 26, '2024-10-05', 52.00, 'Moderate', 'No'),
(43, 26, '2024-12-05', 55.00, 'Mild', 'No'),
(44, 27, '2024-10-17', 48.00, 'Mild', 'Yes'),
(45, 28, '2024-10-28', 64.00, 'None', 'No'),
(46, 29, '2024-11-08', 43.00, 'Severe', 'Yes'),
(47, 29, '2024-12-08', 47.00, 'Moderate', 'Yes'),
(48, 30, '2024-11-19', 55.00, 'Mild', 'No'),
(49, 31, '2024-11-25', 58.00, 'None', 'No'),
(50, 32, '2024-12-01', 47.00, 'Moderate', 'Yes'),
(51, 32, '2024-12-20', 51.00, 'Mild', 'No'),
(52, 33, '2024-12-05', 62.00, 'None', 'No'),
(53, 34, '2024-12-10', 50.00, 'Mild', 'Yes'),
(54, 35, '2024-12-15', 45.00, 'Severe', 'Yes'),
(55, 35, '2024-12-25', 49.00, 'Moderate', 'Yes'),
(56, 36, '2024-12-18', 57.00, 'Moderate', 'No'),
(57, 37, '2024-12-20', 53.00, 'Mild', 'No'),
(58, 38, '2024-12-22', 66.00, 'None', 'No'),
(59, 39, '2024-12-27', 49.00, 'Moderate', 'Yes'),
(60, 40, '2024-05-10', 54.00, 'Mild', 'No'),
(61, 40, '2024-10-10', 57.00, 'None', 'No');

select * 
from Patients

select *
from Pacemaker_Implantation

select *
from Heart_Function_FollowUp

select Age,Name
from Patients

select Implant_Id,Implant_Date
from Pacemaker_Implantation

select FollowUp_Id,Checkup_Date
from Heart_Function_FollowUp

select Checkup_Date,FollowUp_Id
from Heart_Function_FollowUp
where Pationts_Id=1;

select RV_Pacing_Burden,Implant_Date
from Pacemaker_Implantation
where Pacing_Mode='DDD'

select Age,Name
from Patients
where Gender='male';

select Checkup_Date,FollowUp_Id
from Heart_Function_FollowUp
LIMIT 5;

select *
from Pacemaker_Implantation
LIMIT 4;
select *
from Patients
where Name like 'a%'


select Checkup_Date
from Heart_Function_FollowUp
where Sympotoms_Dyspnea like '%d'


select *
from Pacemaker_Implantation
where Pacing_Mode like '%D%'

select distinct *
from Patients

select distinct Pationts_Id
from Heart_Function_FollowUp

select Pationts_Id,avg(Age)
from Patients
group by Pationts_Id


select count(Pationts_Id),Sympotoms_Dyspnea
from Heart_Function_FollowUp
group by Sympotoms_Dyspnea

select MIN(RV_Pacing_Burden),Pationts_Id
from Pacemaker_Implantation
where Pacing_Mode='VVI'
group by Pationts_Id

select *
from Patients
ORDER by Pationts_Id ASC

select *
from Heart_Function_FollowUp
order by Pationts_Id DESC

select Implant_Id,Pationts_Id
from Pacemaker_Implantation
order by RV_Pacing_Burden asc

select avg(Age)
from Patients

select max(Ejection_Fraction_EF)
from Heart_Function_FollowUp

select COUNT(Age)
from Patients
where Age >50;

select MIN(RV_Pacing_Burden),SUM(RV_Pacing_Burden)
from Pacemaker_Implantation

update Patients
set age=30
where Pationts_Id=3

select Age
from Patients
where Pationts_Id=3

select Patients.Pationts_Id,Pacemaker_Implantation.Pacing_Mode,Heart_Function_FollowUp.Has_Edema
from Patients
join Pacemaker_Implantation
on Patients.Pationts_Id=Pacemaker_Implantation.Pationts_Id
join Heart_Function_FollowUp
on Patients.Pationts_Id=Heart_Function_FollowUp.Pationts_Id


select *
from Patients
join Pacemaker_Implantation
on Patients.Pationts_Id=Pacemaker_Implantation.Pationts_Id
join Heart_Function_FollowUp
on Patients.Pationts_Id=Heart_Function_FollowUp.Pationts_Id



