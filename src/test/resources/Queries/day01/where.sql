select * from employees;

/*
 WHERE

 -- Which keyword we are using in JAVA to filter ?
    -- if statement


 -- To filter result from database while we are running query
     we are gonna use WHERE keyword


 -- String(Java) ---> Varchar (Database)
                      Varchar(20) --> it means you will have 20 letter
 -- double,float ---> Decimals
 */

select * from EMPLOYEES
where FIRST_NAME='David'; --> '' it is case SENSITIVE

-- display firstname,lastname,salary where firstname is Peter
select first_name,last_name,salary from employees
where first_name='Peter';


-- display firstname,lastname,salary where firstname is David and last_name is Austin
select first_name,last_name,salary from EMPLOYEES
where first_name='David' and last_name='Austin';

-- display all information from employees where salary is bigger than 6000
select * from EMPLOYEES
where SALARY>6000;

-- display email of who is making less than 6000
select first_name,email from EMPLOYEES
where SALARY<6000;

-- display all info from employees  who is making more than 6000 and department id is 60 ;
select * from EMPLOYEES
where SALARY>6000 and DEPARTMENT_ID=60;

-- display all info from employees where salary  equals or more than 3000  and salary  equals or less than 7000
select * from EMPLOYEES
where SALARY>=3000 and SALARY<=7000;