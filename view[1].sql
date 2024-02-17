create synonym HRCousres
for [dbo].[Course]

create synonym HRTrack 
for [dbo].[Track]

create synonym HRStudent 
for [dbo].[Student]

create synonym HRStudent_Course
for [dbo].[Student_Course]

create synonym HRInstructoe
for [dbo].[Instructor]

create synonym HRExam 
for [dbo].[Exam]

create synonym HRClassCourseInstructor
for [dbo].[Class_Course_Instractor]

create synonym HRDepartment
FOR [dbo].[Department]

CREATE SYNONYM HRBranch 
for [dbo].[Branch]

create synonym HRDeptBranch 
for [dbo].[Department_Branch]

create synonym HRIntake 
for [dbo].[Intake]

create synonym HRInstrucot_Intake
for [dbo].[Intake_Instructor]

create synonym HRClass
for [dbo].[Class]

--View to Display All CousreNames in Track .Net full Stack  
create view CourseNameTnet
as 
select c.Crs_name,t.Track_name
from HRCousres c inner join [dbo].[Track_Course] tc
on c.Crs_id =tc.Course_id inner join HRTrack t
on t.Track_id = tc.Track_id and t.Track_id=1
 
 select *from CourseNameTnet

--View to Display All CousreNames in Track Full Stack Development using Python  

create view CursNameTpython
as 
select c.Crs_name,t.Track_name
from HRCousres c inner join [dbo].[Track_Course] tc
on c.Crs_id =tc.Course_id inner join HRTrack t
on t.Track_id = tc.Track_id and t.Track_id=1
 
Select *from CursNameTpython

----------

Select * from HRCousres
Select * from HRStudent
SELECT * from HRStudent_Course

--View That Display Students which Enroll in Course
create view StudentEnrollInCourses
as
select s.Std_name , c.Crs_name 
from HRCousres c inner join HRStudent_Course stc
on c.Crs_id=stc.Course_id inner join HRStudent s
on s.Std_id=stc.Student_id
 
 Select *from StudentEnrollInCourses
 ----------------------
 select*from HRInstructoe
 select * from HRCousres
 Select * from HRClassCourseInstructor

 --View to show which Instructor teach each Course 

 Create view InstructorTeachCourse as
 select I.Ins_Name , c.Crs_name
 FROM HRInstructoe I INNER JOIN HRClassCourseInstructor CI
 ON I.Ins_Id= CI.Course_Id INNER Join HRCousres C
 on C.Crs_id=CI.Course_Id

 select *from InstructorTeachCourse
 ---------

 select *from HRBranch
 select *from HRDepartment
 select *from HRDeptBranch
 select *from HRIntake
 -------------

 --View to see each department with each branch with track name

 create view deptBTI
 as
select Dept_name, Branch_name ,Int_name,Track_name
 from HRDepartment dt full outer join HRDeptBranch db
 on dt.Dept_id =  db.Dept_id full outer join HRBranch B
 ON B.Branch_id=DB.Branch_id full outer JOIN HRIntake I
 on I.Int_id = B.Branch_id full outer join HRTrack T
 on t.Track_id=dt.Dept_id

 select *from deptBTI
 -----------------------------------------

--view to display instructor name with intake 
create view InstactoeIntake as 
 select Ins_Name,Int_name
 from HRInstructoe I full outer join HRInstrucot_Intake II
 on i.Ins_Id=ii.Ins_Id inner join HRIntake it
 on it.Int_id=ii.Intake_Id 

  select *from InstactoeIntake

---------------------------------

--view to display student in class , dept and track 

create view StdWtrWdeptwCl
as
SELECT Std_name, Class_name ,Dept_name,Track_name
FROM HRStudent ST inner JOIN HRClass C
ON ST.Std_id = C.Class_id INNER JOIN HRDepartment D
ON C.Class_id=D.Dept_id inner join HRTrack t
on t.Track_id=c.Class_id 

select *from StdWtrWdeptwCl
---------------------------------
