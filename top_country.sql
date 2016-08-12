
select
    Country.BillingCountry,
    max(Country.MoneySpent)
from
    (select
        BillingCountry,
        sum(Total) as MoneySpent
    from Invoice
    group by BillingCountry
    order by MoneySpent desc) as Country
