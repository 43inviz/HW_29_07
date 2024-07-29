use Academy;

go
--Вивести всі можливі пари рядків викладачів та груп.
select Teachers.name , Teachers.surname , Groups.name
from Teachers
cross join Groups;

go

--Вивести назви факультетів, фонд фінансування кафедр
--яких перевищує фонд фінансування факультету.

select Faculties.name
from Faculties,Deparments
where Faculties.id = Deparments.facultiesId and Deparments.financing > Faculties.financing

go
--Вивести прізвища кураторів груп та назви груп, які вони
--курирують.

select Curators.Name,Groups.name
from Curators,GroupsCurators, Groups
where Curators.Id = GroupsCurators.curatorId and GroupsCurators.groupId = Groups.id;

go

--Вивести імена та прізвища викладачів, які читають лекції
--у групі 
select Teachers.name, Teachers.surname 
from Teachers, Lecture, GroupsLectures, Groups
where Teachers.Id = Lecture.teachersId and Lecture.id = GroupsLectures.lectureId and GroupsLectures.GroupId = Groups.id and Groups.name = 'Група М-2';

go

--. Вивести прізвища викладачів та назви факультетів, на яких
--вони читають лекції.

select  Teachers.Surname, Faculties.Name
from Teachers, Lecture, GroupsLectures, Groups, Deparments, Faculties
where Teachers.id = Lecture.teachersId and Lecture.id = GroupsLectures.lectureId and GroupsLectures.groupId = Groups.id and Groups.departmentId = Deparments.id and Deparments.facultiesId = Faculties.id;


go

--Вивести назви кафедр та назви груп, які до них належать.
select Deparments.name , Groups.Name 
from Deparments, Groups
where Deparments.id = Groups.departmentId;


go


--7. Вивести назви дисциплін, які читає викладач “Samantha
--Adams”.

select Subjects.name 
from Teachers, Lecture, Subjects
where Teachers.id = Lecture.teachersId and Lecture.subjectId = Subjects.id and Teachers.name = 'Дмитро' and Teachers.surname = 'Горбачов';


go
--. Вивести назви груп, що належать до факультету 


select Groups.name 
from Groups, Deparments, Faculties
where Groups.departmentId = Deparments.id and Deparments.facultiesId = Faculties.Id and Faculties.Name = 'Кафедра Математики';





