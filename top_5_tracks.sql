
select
    sum(l.TrackId) as TrackTotals,
    t.Name as TrackName
from InvoiceLine l, Track t
where l.TrackId = t.TrackId
group by TrackName
order by TrackTotals desc limit 5
