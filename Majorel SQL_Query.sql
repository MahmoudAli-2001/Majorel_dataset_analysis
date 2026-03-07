create database Majorel_DB
use Majorel_DB

--1 display majorel table
select * from [Majorel.xlsx - Majorel]

--2 display number of attrition employees 
select Attrition,count(*) from [Majorel.xlsx - Majorel]
group by Attrition
order by count(*) desc

--3 Average Age of employees 
select avg(Age) from [Majorel.xlsx - Majorel]

--4 Average Job Satisfaction Score 
select avg(JobSatisfaction) from [Majorel.xlsx - Majorel]

--5 display number of Job Satisfaction level of employees 
select JobSatisfaction,count(*) from [Majorel.xlsx - Majorel]
group by JobSatisfaction
order by JobSatisfaction

--6 display Average Environment Satisfaction  
select avg(EnvironmentSatisfaction) from [Majorel.xlsx - Majorel]

--7 display number of Environment Satisfaction level of employees 
select EnvironmentSatisfaction,count(*) from [Majorel.xlsx - Majorel]
group by EnvironmentSatisfaction
order by EnvironmentSatisfaction

--8 Average Work-Life Balance Score  
select avg(WorkLifeBalance) from [Majorel.xlsx - Majorel]

--9  display number of Work-Life Balance level of employees 
select WorkLifeBalance,count(*) from [Majorel.xlsx - Majorel]
group by WorkLifeBalance
order by WorkLifeBalance

--10 Employee Engagement Score   
select avg(JobInvolvement) from [Majorel.xlsx - Majorel]

--11 display number of JobInvolvement level of employees 
select JobInvolvement,count(*) from [Majorel.xlsx - Majorel]
group by JobInvolvement
order by JobInvolvement

--12 RelationshipSatisfaction Score
select avg(RelationshipSatisfaction) from [Majorel.xlsx - Majorel]

--13 display number of RelationshipSatisfaction level of employees 
select RelationshipSatisfaction,count(*) from [Majorel.xlsx - Majorel]
group by RelationshipSatisfaction
order by RelationshipSatisfaction

--14 Average Performance Rating 
select avg(PerformanceRating) from [Majorel.xlsx - Majorel]

--15 records of PerformanceRating
select PerformanceRating,count(*) from [Majorel.xlsx - Majorel]
group by PerformanceRating

--16 Performance by Department 
select department ,sum(PerformanceRating) from [Majorel.xlsx - Majorel]
group by department

--17 Performance vs Training Hours
select TrainingTimesLastYear ,sum(PerformanceRating) from [Majorel.xlsx - Majorel]
group by TrainingTimesLastYear
order by TrainingTimesLastYear

--18 Average Monthly Income
select avg(MonthlyIncome) from [Majorel.xlsx - Majorel]

--19 average of Salary_Growth_Rate
select avg(PercentSalaryHike) as Salary_Growth_Rate_avg from [Majorel.xlsx - Majorel]

--20 salary by depaement 
select department  , AVG(MonthlyIncome) as average_salary from [Majorel.xlsx - Majorel]
group by department
order by average_salary

--20 salary by gender
select Gender  , AVG(MonthlyIncome) as average_salary from [Majorel.xlsx - Majorel]
group by Gender
order by average_salary

--21 Average Salary by Job Level 
select JobLevel  , AVG(MonthlyIncome) as average_salary from [Majorel.xlsx - Majorel]
group by JobLevel
order by average_salary

--records of job level
select JobLevel,count(*) from [Majorel.xlsx - Majorel]
group by JobLevel
order by JobLevel

--22 number of attrition employees by over time 
select OverTime ,Attrition ,count(*)as count from [Majorel.xlsx - Majorel]
group by OverTime ,Attrition

--23 number of attrition employees by JobSatisfaction 
select JobSatisfaction ,Attrition ,count(*)as count from [Majorel.xlsx - Majorel]
group by JobSatisfaction ,Attrition
order by JobSatisfaction ,Attrition

--24 number of attrition employees by JobLevel
select JobLevel ,Attrition ,count(*)as count from [Majorel.xlsx - Majorel]
group by JobLevel ,Attrition
order by JobLevel ,Attrition

--25 number of attrition employees by JobInvolvement
select JobInvolvement ,Attrition ,count(*)as count from [Majorel.xlsx - Majorel]
group by JobInvolvement ,Attrition
order by JobInvolvement ,Attrition

--26  number of attrition employees by NumCompaniesWorked
select NumCompaniesWorked ,Attrition ,count(*)as count from [Majorel.xlsx - Majorel]
group by NumCompaniesWorked ,Attrition
order by NumCompaniesWorked ,Attrition

--27  number of attrition employees by salary
select Attrition,avg(MonthlyIncome) as avg_salary,count(*) as Number_of_attrition from [Majorel.xlsx - Majorel]
group by Attrition 
order by avg(MonthlyIncome) 

--28 joblevel vs salary
select JobLevel,avg(MonthlyIncome) as avg_salary from [Majorel.xlsx - Majorel]
group by JobLevel
order by JobLevel

--29 JobSatisfaction vs salary
select JobSatisfaction,avg(MonthlyIncome) as avg_salary from [Majorel.xlsx - Majorel]
group by JobSatisfaction
order by JobSatisfaction

-- 30 Education vs salary
select Education,avg(MonthlyIncome) as avg_salary from [Majorel.xlsx - Majorel]
group by Education
order by Education

--31 Which department has the highest attrition
select Department ,Attrition ,count(*)as count from [Majorel.xlsx - Majorel]
group by Department ,Attrition
order by Department ,Attrition

-- 32 average of performance rating
select avg(PerformanceRating) from [Majorel.xlsx - Majorel]

--33 Does training improve performance?
select TrainingTimesLastYear ,sum(PerformanceRating) as sum_PerformanceRating from [Majorel.xlsx - Majorel]
group by TrainingTimesLastYear 
order by TrainingTimesLastYear 

--34 work-life balance affect performance
select WorkLifeBalance ,sum(PerformanceRating) as sum_PerformanceRating from [Majorel.xlsx - Majorel]
group by WorkLifeBalance 
order by WorkLifeBalance 

--35  job involvement impact performance?
select JobInvolvement ,sum(PerformanceRating) as sum_PerformanceRating from [Majorel.xlsx - Majorel]
group by JobInvolvement 
order by JobInvolvement 

--36 salary impact performance?
select PerformanceRating ,sum(MonthlyIncome) as total_salary from [Majorel.xlsx - Majorel]
group by PerformanceRating 

--37 joblevel vs performanceRating
select JobLevel,sum(PerformanceRating) as total_rating from [Majorel.xlsx - Majorel]
group by JobLevel
order by JobLevel

--38 Education vs performanceRating
select Education,sum(PerformanceRating) as total_rating from [Majorel.xlsx - Majorel]
group by Education
order by Education

--39 WorkLifeBalance vs performanceRating
select WorkLifeBalance,sum(PerformanceRating) as total_rating from [Majorel.xlsx - Majorel]
group by WorkLifeBalance
order by WorkLifeBalance

--40 EnvironmentSatisfaction vs performanceRating
select EnvironmentSatisfaction,sum(PerformanceRating) as total_rating from [Majorel.xlsx - Majorel]
group by EnvironmentSatisfaction
order by EnvironmentSatisfaction

--41  job involvement vs Attrition
select JobInvolvement , Attrition,count(*) from [Majorel.xlsx - Majorel]
where Attrition='Yes'
group by JobInvolvement, Attrition

--42 average of YearsSinceLastPromotion
select avg(YearsSinceLastPromotion) as average_YearsSinceLastPromotion from [Majorel.xlsx - Majorel]

--43  promotion frequency affect retention?
select YearsSinceLastPromotion,Attrition ,count(*) from [Majorel.xlsx - Majorel]
where Attrition = 'yes'
group by YearsSinceLastPromotion,Attrition

--44 Does experience lead to higher job level?
select JobLevel,avg(TotalWorkingYears) from [Majorel.xlsx - Majorel]
group by JobLevel
order by JobLevel

--45 Which department has highest salary?
select Department,avg(MonthlyIncome) as avg_salary from [Majorel.xlsx - Majorel]
group by Department
order by avg_salary

--46 Which department has highest number of employees?
select Department,count(EmployeeCount) as avg_salary from [Majorel.xlsx - Majorel]
group by Department 

--47 Which gender has highest number of employees?
select Gender,count(EmployeeCount) as avg_salary from [Majorel.xlsx - Majorel]
group by Gender 

--48 Does training improve employee retention?
select TrainingTimesLastYear,Attrition,count(*) from [Majorel.xlsx - Majorel]
group by TrainingTimesLastYear ,Attrition
order by TrainingTimesLastYear

--49 Which Department receive more training?
select Department,sum(TrainingTimesLastYear) as total_training_years from [Majorel.xlsx - Majorel]
group by Department 
order by total_training_years desc

--50 Does overtime affect work-life balance ?
select OverTime,sum(WorkLifeBalance) as total_work_life_balance from [Majorel.xlsx - Majorel]
group by OverTime 

--51  Does overtime increase salary?
select OverTime,avg(MonthlyIncome) as average_salary from [Majorel.xlsx - Majorel]
group by OverTime 

--52 Does business travel affect satisfaction?
select BusinessTravel,sum(EnvironmentSatisfaction) as total_satisfaction from [Majorel.xlsx - Majorel]
group by BusinessTravel
