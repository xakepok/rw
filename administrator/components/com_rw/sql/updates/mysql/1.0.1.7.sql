create or replace view `#__rw_stations_info` as
select `s`.`id`          AS `id`,
       `s`.`title`       AS `station`,
       `dir`.`title`     AS `direction`,
       `d`.`directionID` AS `directionID`,
       `s`.`yandex`      AS `yandex`,
       `s`.`esr`         AS `esr`,
       `s`.`express`     AS `express`,
       `t`.`title`       AS `turnstiles`,
       `s`.`detour`      AS `detour`,
       `s`.`tppd`        AS `tppd`
from `#__rw_stations` `s`
         left join `#__rw_station_directions` `d` on `s`.`id` = `d`.`stationID`
         left join `#__rw_directions` `dir` on `d`.`directionID` = `dir`.`id`
         left join `#__rw_turnstiles` `t` on `s`.`turnstiles` = `t`.`id`;

