
select
    count(l.TrackId) as TrackTotals,
    m.Name as MediaChoice
from InvoiceLine l, Track t, MediaType m
where l.TrackId = t.TrackId
and t.MediaTypeId = m.MediaTypeId
group by MediaChoice
order by TrackTotals desc limit 1
