
select
    i.Total 'Invoice Total',
    c.FirstName 'Customer First Name',
    c.LastName 'Customer Last Name',
    c.Country 'Customer Country',
    e.FirstName 'Sales First Name',
    e.LastName 'Sales Last Name'
from Employee e, Invoice i, Customer c
where i.CustomerId = c.CustomerId
and c.SupportRepId = e.EmployeeId
and e.Title LIKE 'Sales%'
