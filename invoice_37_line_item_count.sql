
select
    count(*) as NumberOfRows
from
    (select
        i.*
    from InvoiceLine i
    where i.InvoiceId = 37) as Id37
