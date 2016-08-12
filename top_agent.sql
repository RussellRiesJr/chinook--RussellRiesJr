
select
    SalesReview.FirstName,
    SalesReview.LastName,
    max(SalesReview.TotalSales) as Gross
from
    (select
        e.FirstName as FirstName,
        e.LastName as LastName,
        sum(i.Total) as 'TotalSales'
    from Employee e, Customer c, Invoice i
    where e.EmployeeId = c.SupportRepId
    and c.CustomerId = i.CustomerId
    group by e.LastName) as SalesReview
