
select
    BillingCountry,
    sum(Total) as MoneySpent
from Invoice
group by BillingCountry
order by MoneySpent desc
