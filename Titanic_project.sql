-- TITANIC DATA ANALYSIS PROJECT

-- Q1.Select all columns for all passengers in the Titanic dataset.

select * from titanic;

-- Q2. Display the number of passengers in each class (1st, 2nd, 3rd). 

select Pclass, count(*) as No_of_Passengers from titanic group by Pclass;

-- Q3. Find the number of male and female passengers. 

select Sex, count(*) as Total_no from titanic group by Sex;

-- Q4. Display the names of passengers who survived. 


select Name from titanic where Survived='Survived';

-- Q5. Find the average age of passengers. 

select AVG(Age) from titanic;

-- Q6. List the names and ages of passengers who were younger than 18. 

select Name, Age from titanic where Age < 18;

-- Q7. Display the number of passengers in each embarkation port (C, Q, S).

select Embarked, count(*) as No_of_Passengers from titanic group by Embarked;

-- Q8. Find the highest fare paid by any passenger. 

select Name, Fare from titanic order by Fare desc limit 1;

-- Q9. List the average age of passengers for each class.

select Pclass, Avg(Age) from titanic group by Pclass;

-- Q10. Display the passenger names and ages for those who survived and were in 1st class.

select name, Age from titanic where Survived='Survived' and Pclass=1;  

-- 11. Find the number of passengers who paid more than 50 for their ticket.

select Sum(No_of_Passengers) as Passengers_Paid_Above50 from (select count(*) as No_of_Passengers, Fare from titanic group by Fare having Fare > 50) x ;

-- Q12. List the names of passengers who did not survive and were in 3rd class.

select name from titanic where Survived='Died' and Pclass=3; 

-- Q13. Find the number of passengers with missing values in the "Age" column.

select Age, count(*) as No_of_Passengers  from titanic group by age having Age IS NULL;

-- Q14. Display the passenger names and ages for those who embarked at port 'S' and survived.

select Name, Age from titanic where Embarked ='S' and Survived = 'Survived';

-- Q15. Calculate the total number of passengers on board.

select Count(Name) from titanic;

-- Q16. List the average fare for each class.  

select  Pclass, Avg(Fare) as Average_fare from titanic group by Pclass;

-- Q17. Display the passenger names and ages for those with a known age and a fare greater than 100.

select Name, Age from titanic where Age is not Null and Fare > 100;

-- Q18. Find the percentage of passengers who survived.

Select distinct ((select Count(*) from titanic where Survived='Survived') * 100 / (Select Count(*) From titanic)) as Percentage_of_passengers
From titanic;

-- Q19. List the names of passengers who were in 2nd class and had a fare less than 20. 

select name from titanic where  Pclass=2 and Fare < 20;

-- Q20. Display the passenger names and ages for those who did not survive and were in 1st class.

select name, Age from titanic where Survived='Died' and Pclass=1;

-- Q21. Find the number of passengers for each combination of class and gender.

select Sex,Pclass, count(*) as No_Of_Passengers from titanic group by Sex,Pclass order by Sex,Pclass;

-- Q22. List the names of passengers who survived and were in 3rd class with an age less than 20.

select name from titanic where Survived='Survived' and Pclass=3 and Age < 20;

-- Q23. Display the passenger names for those with the name starting with 'Mr.' 

select name from titanic where name like 'Mr.%';

-- Q24. Find the average age of male and female passengers.

select Sex,AVG(Age) as AVG_Age  from titanic group by Sex;

-- Q25. List the names of passengers who paid the highest fare.

select name, Fare from titanic order by Fare desc limit 3;

-- Q26. Find the number of passengers for each embarkation port and class.

select Embarked,Pclass,count(*) as No_Of_Passengers from titanic group by  Embarked,Pclass ORDER BY Embarked, Pclass;

-- Q27. Display the passenger names and ages for those who survived and paid more than 200 for their ticket.

select name, age from titanic where Survived ='Survived' and Fare > 200;  

-- Q28. Find the average age of passengers who survived and those who did not. 

select Survived,AVG(Age) as Average from titanic group by Survived;

-- Q29. List the names of passengers who were in 1st class and had an age greater than 50.

select name from titanic where Pclass =1 and Age > 50;

-- Q30. Display the passenger names for those with the name ending with 'sson'.

select name from titanic where name like '%sson';   



  



