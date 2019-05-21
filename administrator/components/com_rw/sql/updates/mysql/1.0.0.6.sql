create or replace view `#__rw_stations_info` as
select s.id, s.title as station, dir.title as direction, d.directionID, s.yandex, s.esr, s.express, t.title as turnstiles, s.detour
from `#__rw_stations` s
         left join `#__rw_station_directions` d on s.id = d.stationID
         left join `#__rw_directions` dir on d.directionID = dir.id
         left join `#__rw_turnstiles` t on s.turnstiles = t.id;