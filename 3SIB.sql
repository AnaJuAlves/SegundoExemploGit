desc employees
desc departments

select e.last_name,d.department_name
from employees e inner join departments d
on (d.department_id=e.department_id);

 

select e.last_name,d.department_name
from employees e left outer join departments d
on (d.department_id=e.department_id);

 

select e.last_name,d.department_name "Nome do Departamento"
from employees e right  outer join departments d
on (d.department_id=e.department_id)
where e.salary >15000
order by last_name asc;

 

select e.last_name,d.department_name "Nome do Departamento"
from employees e right  outer join departments d
on (d.department_id=e.department_id)
where  department_name like 'A%'
order by last_name asc;

Select last_name
  FROM employees
  where salary > (select salary
  from employees
  where last_name = 'Abel');
  
select employee_id,last_name
From employees
where salary IN
  (SELECT min(salary) 
   FROM employees
   WHERE department_id =30);

Select m.last_name manager,w.last_name worker
from employees m join employees w
on (m.employee_id=w.manager_id);
