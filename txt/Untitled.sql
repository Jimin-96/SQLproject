
select  first_name,
		last_name,
        email,
        phone_number,
        hire_date,
        job_id,
        salary,
        commission_pct,
        manager_id,
        department_id
from employees;



select first_name ,
	   last_name ,
       phone_number,
       hire_date ,
       salary 
from employees;


select salary 월급, 
       salary-100 "월급-식대",
       salary*12 연봉,
       salary*12+5000 "연봉+보너스",
       salary/30 "일급",
       employee_id%3"워크샵 팀"
from employees;


select job_id*12 -- 문자열은 0으로 계산됨

from employees;

select first_name, last_name 
from employees;

-- 컬럼 합치기
select concat(first_name," ",last_name) "풀네임",
       concat(first_name," ",last_name) "이름",
       concat(first_name," ",last_name," 입사일은",hire_date," 입니다")
from employees;

select first_name,
	   salary,
       now() as 기준일,
       "(주)개발자" as 회사
from employees;

select now(); -- 테이블명을 생략할때도 있음

select first_name "이름",department_id "부서번호"
from employees
where department_id = 10;


select first_name "이름",salary "월급",hire_date"입사일"
from employees
where salary<=15000
and hire_date >= "2007-01-01";

select first_name,salary
from employees
where first_name = "Lex";


select first_name,salary
from employees
where binary first_name = "lex";

select first_name 이름,salary 월급
from employees
where salary<=14000 or salary >=17000;

select first_name,hire_date
from employees
where hire_date >= "04/01/01"
and  hire_date <= "05/12/31";

select first_name,salary
from employees
where salary = 2100 or salary = 3100 or salary = 4100 or salary = 5100;

