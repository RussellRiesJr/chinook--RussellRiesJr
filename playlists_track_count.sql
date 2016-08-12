
select
    count(t.TrackId) as '# of Tracks',
    l.Name as 'Playlist Name'
from PlaylistTrack t, Playlist l
where t.PlaylistId = l.PlaylistId
group by l.Name
