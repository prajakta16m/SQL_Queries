/* Select 2nd highest salary of Employee */

Select MAX(Salary) as second_max
from Employee
where second_max < 
  ( Select MAX(Salary)
    from Employee );

