
select
    e.FirstName || ' ' || e.LastName as EmployeeName,
    count(c.SupportRepId) as CustomerCount
from Employee e, Customer c
where e.EmployeeId = c.SupportRepId
group by EmployeeName
