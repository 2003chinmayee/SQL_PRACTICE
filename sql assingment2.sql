create database student;

create table students(student_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name varchar(50),
class VARCHAR (20),
subject VARCHAR(50),
marks INT,
age INT,
gender char(1));

INSERT  INTO students ( student_id,first_name,last_name,class,subject,marks,age,gender) values(1,"rohan","patil","first","math",56,7,'M'),
(2,"rohIT","GAVADE","ten","mechanics",75,25,'M'),
(3,"chinmayee","patil","four","computer",99,22,'F'),
(4,"rohini","dure","first","english",88,7,'F'),
(5,"anish","patil","third","science",67,12,'M'),
(6,"shravya","gavade","four","math",99,22,'F'),
(7,"dev","devdas","eight","geography",55,15,'M'),(8,"sai","patil","seven","math",87,14,'M'),
(9,"pratiksha","patil","elleventh","math",100,19,'F'),
(10,"ganda","patel","nine","history",65,16,'F')

select class ,count(student_id) as student_count  from students  group by 
class;

select subject ,avg(marks) from students group by subject;



select class ,subject,count(*) as tot_student ,avg(marks) as average_marks from students group by class,subject; 

select gender ,avg(marks) from students group by gender;
select class ,avg(marks) from students group by class having avg(marks)>80 ;

select subject,marks from students group by subject,marks  having marks>90;  
select  class,count(*)as tot_in_class from  students group by class having  class<3;

select gender,class from students  where gender='F' group by gender,class having  gender>2;

select subject,avg(marks) from students group  by subject having avg(marks)<90 and avg(marks)>80;

select class ,min(marks),max(marks) from students group by class having min(marks)>70;
select class ,sum(marks) from students group by class having sum(marks)>400;

select age ,avg(marks) from students group by age  having avg(marks)>85;

select gender, avg(marks) ,subject  from  students  where gender='F' group by gender,subject  having avg(marks)>85;