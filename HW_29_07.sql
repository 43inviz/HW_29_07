use Academy;

go
--������� �� ������ ���� ����� ���������� �� ����.
select Teachers.name , Teachers.surname , Groups.name
from Teachers
cross join Groups;

go

--������� ����� ����������, ���� ������������ ������
--���� �������� ���� ������������ ����������.

select Faculties.name
from Faculties,Deparments
where Faculties.id = Deparments.facultiesId and Deparments.financing > Faculties.financing

go
--������� ������� �������� ���� �� ����� ����, �� ����
--���������.

select Curators.Name,Groups.name
from Curators,GroupsCurators, Groups
where Curators.Id = GroupsCurators.curatorId and GroupsCurators.groupId = Groups.id;

go

--������� ����� �� ������� ����������, �� ������� ������
--� ���� 
select Teachers.name, Teachers.surname 
from Teachers, Lecture, GroupsLectures, Groups
where Teachers.Id = Lecture.teachersId and Lecture.id = GroupsLectures.lectureId and GroupsLectures.GroupId = Groups.id and Groups.name = '����� �-2';

go

--. ������� ������� ���������� �� ����� ����������, �� ����
--���� ������� ������.

select  Teachers.Surname, Faculties.Name
from Teachers, Lecture, GroupsLectures, Groups, Deparments, Faculties
where Teachers.id = Lecture.teachersId and Lecture.id = GroupsLectures.lectureId and GroupsLectures.groupId = Groups.id and Groups.departmentId = Deparments.id and Deparments.facultiesId = Faculties.id;


go

--������� ����� ������ �� ����� ����, �� �� ��� ��������.
select Deparments.name , Groups.Name 
from Deparments, Groups
where Deparments.id = Groups.departmentId;


go


--7. ������� ����� ��������, �� ���� �������� �Samantha
--Adams�.

select Subjects.name 
from Teachers, Lecture, Subjects
where Teachers.id = Lecture.teachersId and Lecture.subjectId = Subjects.id and Teachers.name = '������' and Teachers.surname = '��������';


go
--. ������� ����� ����, �� �������� �� ���������� 


select Groups.name 
from Groups, Deparments, Faculties
where Groups.departmentId = Deparments.id and Deparments.facultiesId = Faculties.Id and Faculties.Name = '������� ����������';





