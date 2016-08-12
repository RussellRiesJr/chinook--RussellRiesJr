
select (select count(InvoiceDate) from Invoice i where i.InvoiceDate like '2009%')
    + (select count(InvoiceDate) from Invoice i where i.InvoiceDate like '2011%') '2009 + 2011 Invoice Count'

-- This is an example of the group by function
select
    count(i.InvoiceId) as TotalInvoices,
    strftime('%Y', i.InvoiceDate) as InvoiceYear
from Invoice i
where InvoiceYear = '2011'
or InvoiceYear = '2009'
group by InvoiceYear
