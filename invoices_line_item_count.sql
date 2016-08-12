
select
    i.*,
    count(l.InvoiceId) as 'Line Item Count'
from Invoice i, InvoiceLine l
where i.InvoiceId = l.InvoiceId
group by i.InvoiceId
