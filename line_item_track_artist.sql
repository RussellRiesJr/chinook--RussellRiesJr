
select
    i.*,
    t.Name as 'Purchased Track',
    a.Name as 'Artist Name'
from Invoice i, InvoiceLine l, Track t, Album b, Artist a
where i.InvoiceId = l.InvoiceId
and l.TrackId = t.TrackId
and t.AlbumId = b.AlbumId
and b.ArtistId = a.ArtistId
