-- create table EmployeeAttrition1(
-- 	EmployeeNumber int,
-- 	Age int,
-- 	BusinessTravel varchar(32),
-- 	DailyRate int,
-- 	Department varchar(32),
-- 	DistanceFromHome int,
-- 	Education int,
-- 	EducationField varchar(32),
-- 	EnvironmentSatisfaction int,
-- 	Gender varchar(32),
-- 	HourlyRate int,
-- 	JobInvolvement int,
-- 	JobLevel int,
-- 	JobRole varchar(32),
-- 	JobSatisfaction int,
-- 	MaritalStatus varchar(32),
-- 	MonthlyIncome float(32),
-- 	MonthlyRate float(32),
-- 	NumCompaniesWorked int,
-- 	PercentSalaryHike float(32),
-- 	PerformanceRating int,
-- 	RelationshipSatisfaction int,
-- 	StandardHours int,
-- 	StockOptionLevel int,
-- 	TotalWorkingYears int,
-- 	TrainingTimesLastYear int,
-- 	WorkLifeBalance int,
-- 	YearsAtCompany int,
-- 	YearsInCurrentRole int,
-- 	YearsSinceLastPromotion int,
-- 	YearsWithCurrManager int
-- );

-- select * from employeeattrition1

-- create table employeeattrition2(
-- 	EmployeeNumber     int,
-- 	Over18            varchar(32),
-- 	OverTime          varchar(32),
-- 	Attrition         varchar(32)
-- );

-- select * from employeeattrition2;

--1
-- select count(*) from employeeattrition1;

--2
-- select JobRole, count(*) as recordcount
-- from employeeattrition1
-- group by JobRole
-- order by recordcount DESC

--3
-- select JobRole, avg(MonthlyIncome), avg(PercentSalaryHike)
-- from employeeattrition1
-- group by JobRole
-- order by JobRole

--4
-- select Gender, MaritalStatus, avg(JobSatisfaction)
-- from employeeattrition1
-- group by Gender, MaritalStatus

--5
-- select JobRole, min(Age) as MinimumAge, max(Age) as MaximumAge, min(HourlyRate) as MinimumHourlyRate, max(HourlyRate) as MaximumHourlyRate
-- from employeeattrition1
-- group by JobRole

--6
-- select e.EmployeeNumber, e.Age, e.Gender, e.JobRole, d.OverTime, d.Attrition
-- from employeeattrition1 e inner join employeeattrition2 d on e.EmployeeNumber = d.EmployeeNumber
-- limit 20
