
select
    e.FirstName 'Sales First Name',
    e.LastName 'Sales Last Name',
    i.*
from Employee e, Invoice i, Customer c
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
and e.Title LIKE 'Sales%'
