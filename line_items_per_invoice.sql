
select
    count(InvoiceLineId) as 'Line Item Count',
    InvoiceId
from InvoiceLine
group by InvoiceId
