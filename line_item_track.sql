
select
    i.*,
    t.Name as 'Purchased Track'
from Invoice i, InvoiceLine l, Track t
where i.InvoiceId = l.InvoiceId
and l.TrackId = t.TrackId
