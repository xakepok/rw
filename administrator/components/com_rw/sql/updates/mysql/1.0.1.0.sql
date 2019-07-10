create or replace view `#__rw_direction_stations` as
select `d`.`directionID` AS `directionID`,
       `dir`.`title`     AS `direction`,
       `d`.`stationID`   AS `stationID`,
       `s`.`yandex`      AS `yandex`,
       `s`.`title`       AS `station`,
       `d`.`indexID`     AS `indexID`,
       `d`.`zoneID`      AS `zoneID`,
       `d`.`level`       AS `level`,
       `d`.`distance`    AS `distance`,
       `t`.`title`       AS `turnstiles`
from ((`#__rw_stations` `s` left join (`#__rw_station_directions` `d` left join `#__rw_directions` `dir` on ((`d`.`directionID` = `dir`.`id`))) on ((`d`.`stationID` = `s`.`id`)))
         left join `#__rw_turnstiles` `t` on ((`s`.`turnstiles` = `t`.`id`)))
where (`d`.`id` is not null)
order by `d`.`directionID`, `d`.`indexID`;

create table `#__payments`
(
    id int auto_increment,
    dat timestamp default current_timestamp not null,
    userID int not null,
    amount double(8,2) unsigned default 0 not null,
    variant tinyint default 0 not null,
    constraint `#__payments_pk`
        primary key (id),
    constraint `#__payments_#__users_id_fk`
        foreign key (userID) references `#__users` (id)
)
    comment 'Платежи';

create index `#__payments_amount_index`
    on `#__payments` (amount);

create index `#__payments_dat_index`
    on `#__payments` (dat);

create index `#__payments_variant_index`
    on `#__payments` (variant);

