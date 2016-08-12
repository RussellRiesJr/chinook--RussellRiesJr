
select
    t.Name as Name,
    a.Title as AlbumTitle,
    m.Name as Media,
    g.Name as GenreType,
    t.Composer as Composer,
    t.Milliseconds as Milliseconds,
    t.Bytes as Bytes,
    t.UnitPrice as Price
from Track t, Album a, MediaType m, Genre g
where t.AlbumId = a.AlbumId
and t.MediaTypeId = m.MediaTypeId
and t.GenreId = g.GenreId
