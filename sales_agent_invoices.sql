
select
    -- This is a way to join items in the returned table
    e.FirstName || ' ' || e.LastName as EmployeeName,
    -- This is how I first did it
    e.FirstName 'Sales First Name',
    e.LastName 'Sales Last Name',
    i.*
from Employee e, Invoice i, Customer c
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
and e.Title LIKE 'Sales%'
