
select
    e.FirstName,
    e.LastName,
    sum(i.Total) as 'Total Sales'
from Employee e, Customer c, Invoice i
where e.EmployeeId = c.SupportRepId
And c.CustomerId = i.CustomerId
group by e.LastName
