
select
    Counts.TrackName as TrackName,
    max(Counts.PurchaseCount) as UnitsPurchased
from
    (select
        strftime('%Y', i.InvoiceDate) as InvoiceYear,
        t.Name as TrackName,
        sum(l.TrackId) as PurchaseCount
    from Invoice i, InvoiceLine l, Track t
    where i.InvoiceId = l.InvoiceId
    and l.TrackId = t.TrackId
    and InvoiceYear = '2013'
    group by TrackName) as Counts
