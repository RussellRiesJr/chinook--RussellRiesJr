
select
    count(l.TrackId) as TrackTotals,
    r.Name as ArtistName
from InvoiceLine l, Track t, Album b, Artist r
where l.TrackId = t.TrackId
and t.AlbumId = b.AlbumId
and b.ArtistId = r.ArtistId
group by ArtistName
order by TrackTotals desc limit 3
