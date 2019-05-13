create table `#__rw_station_directions`
(
    id int auto_increment,
    stationID int not null comment 'ID станции',
    directionID int not null comment 'ID направления',
    indexID tinyint default 0 not null comment 'Порядковый номер станции',
    zoneID tinyint default null null comment 'Порядковый номер зоны',
    level tinyint default 0 not null comment 'Номер ответвления',
    new_level tinyint default 0 not null comment 'От этой станции начинается овтелвление',
    distance int default 0 not null comment 'Расстояние от первой станции',
    default_schedule varchar(255) default 'на Москву' not null comment 'Направление в расписаниях по умолчанию',
    constraint `#__rw_station_directions_pk`
        primary key (id),
    constraint `#__rw_station_directions_#__rw_directions_id_fk`
        foreign key (directionID) references `#__rw_directions` (id),
    constraint `#__rw_station_directions_#__rw_stations_id_fk`
        foreign key (stationID) references `#__rw_stations` (id)
)
    comment 'Привязки станций к направлениям';

create index `#__rw_station_directions_zoneID_indexID_index`
    on `#__rw_station_directions` (zoneID, indexID);

INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (380, 6602, 1, 49, 22, 0, 0, 215, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (381, 10541, 1, 55, 25, 0, 0, 243, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (382, 15410, 1, 53, 24, 0, 0, 234, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (383, 15365, 1, 52, 23, 0, 0, 229, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (384, 15272, 1, 50, 22, 0, 0, 218, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (385, 15319, 1, 51, 23, 0, 0, 224, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (386, 15177, 1, 48, 21, 0, 0, 208, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (387, 15073, 1, 46, 20, 0, 0, 198, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (388, 15019, 1, 45, 19, 0, 0, 189, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (389, 14959, 1, 44, 18, 0, 0, 180, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (390, 14894, 1, 43, 17, 0, 0, 171, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (391, 14828, 1, 42, 17, 0, 0, 160, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (392, 14625, 1, 39, 15, 0, 0, 144, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (393, 14762, 1, 41, 16, 0, 0, 154, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (394, 14549, 1, 38, 15, 0, 0, 130, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (395, 14476, 1, 37, 14, 0, 0, 130, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (396, 14398, 1, 36, 13, 0, 0, 122, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (397, 1805, 1, 3, 2, 0, 0, 7, 'на Можайск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (398, 2394, 1, 4, 2, 0, 0, 11, 'на Можайск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (399, 2992, 1, 5, 2, 0, 1, 13, 'на Можайск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (400, 6993, 1, 6, 2, 0, 0, 14, 'на Можайск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (401, 7482, 1, 7, 3, 0, 0, 16, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (402, 7932, 1, 8, 3, 0, 0, 19, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (403, 8354, 1, 9, 3, 0, 0, 21, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (404, 4192, 1, 6, 3, 1, 0, 20, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (405, 4790, 1, 7, 3, 1, 0, 22, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (406, 5363, 1, 8, 3, 1, 0, 24, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (407, 5923, 1, 9, 4, 1, 0, 26, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (408, 6469, 1, 10, 4, 1, 0, 28, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (409, 8757, 1, 10, 3, 0, 0, 24, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (410, 9144, 1, 11, 4, 0, 0, 26, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (411, 9509, 1, 12, 4, 0, 0, 29, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (412, 9850, 1, 13, 4, 0, 0, 30, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (413, 10157, 1, 14, 4, 0, 0, 33, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (414, 10452, 1, 15, 5, 0, 0, 36, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (415, 10725, 1, 16, 5, 0, 0, 39, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (416, 11241, 1, 18, 5, 0, 1, 44, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (417, 12301, 1, 19, 6, 0, 0, 51, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (418, 11478, 1, 19, 6, 1, 0, 49, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (419, 11699, 1, 20, 6, 1, 0, 52, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (420, 11907, 1, 21, 6, 1, 0, 55, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (421, 12107, 1, 22, 7, 1, 0, 60, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (422, 12487, 1, 20, 6, 0, 0, 55, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (423, 12664, 1, 21, 7, 0, 0, 57, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (424, 12823, 1, 22, 7, 0, 0, 60, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (425, 12976, 1, 23, 7, 0, 0, 63, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (426, 13118, 1, 24, 8, 0, 0, 67, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (427, 13255, 1, 25, 8, 0, 0, 71, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (428, 13382, 1, 26, 8, 0, 0, 74, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (429, 13503, 1, 27, 9, 0, 0, 78, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (430, 13614, 1, 28, 9, 0, 0, 80, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (431, 13722, 1, 29, 9, 0, 0, 84, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (432, 13829, 1, 30, 10, 0, 0, 87, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (433, 13935, 1, 31, 10, 0, 0, 91, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (434, 14036, 1, 32, 11, 0, 0, 98, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (435, 14132, 1, 33, 11, 0, 0, 104, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (436, 14223, 1, 34, 12, 0, 0, 109, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (437, 14315, 1, 35, 12, 0, 0, 111, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (438, 683, 1, 1, 1, 0, 0, 2, 'на Можайск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (439, 1231, 1, 2, 1, 0, 0, 4, 'на Можайск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (440, 214, 1, 0, 0, 0, 0, 0, 'Белорусское направление');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (441, 14697, 1, 40, 15, 0, 0, 147, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (442, 10988, 1, 17, 5, 0, 0, 42, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (443, 11917, 2, 24, 8, 1, 0, 70, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (444, 225, 7, 0, 0, 0, 0, 650, 'на Тверь');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (445, 5447, 6, 4, 2, 0, 0, 10, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (446, 4871, 6, 3, 2, 0, 0, 7, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (447, 3673, 6, 2, 1, 0, 0, 4, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (448, 8828, 6, 30, 11, 0, 0, 105, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (449, 9215, 6, 29, 11, 0, 0, 99, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (450, 9582, 6, 28, 11, 0, 0, 98, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (451, 9914, 6, 27, 11, 0, 0, 92, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (452, 10220, 6, 26, 10, 0, 0, 87, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (453, 10512, 6, 25, 9, 0, 0, 81, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (454, 10784, 6, 24, 8, 0, 0, 74, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (455, 11046, 6, 23, 8, 0, 0, 70, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (456, 11299, 6, 22, 8, 0, 0, 66, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (457, 11535, 6, 21, 7, 0, 0, 63, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (458, 11534, 6, 20, 7, 0, 0, 59, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (459, 11298, 6, 19, 7, 0, 0, 56, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (460, 11045, 6, 18, 6, 0, 0, 51, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (461, 10783, 6, 17, 6, 0, 0, 48, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (462, 10511, 6, 16, 6, 0, 0, 46, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (463, 10219, 6, 15, 5, 0, 0, 42, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (464, 9913, 6, 14, 5, 0, 0, 38, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (465, 9581, 6, 13, 4, 0, 0, 33, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (466, 9214, 6, 12, 4, 0, 0, 30, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (467, 8827, 6, 11, 4, 0, 0, 24, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (468, 8426, 6, 10, 4, 0, 0, 23, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (469, 8004, 6, 9, 3, 0, 0, 21, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (470, 7557, 6, 8, 3, 0, 0, 19, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (471, 7069, 6, 7, 3, 0, 0, 15, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (472, 6551, 6, 6, 2, 0, 0, 13, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (473, 6008, 6, 5, 2, 0, 0, 11, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (474, 3071, 6, 1, 1, 0, 0, 2, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (475, 222, 6, 0, 0, 0, 0, 0, 'Курское направление');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (476, 215, 6, 46, 20, 0, 0, 194, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (477, 757, 6, 45, 19, 0, 0, 191, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (478, 1310, 6, 44, 19, 0, 0, 182, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (479, 1884, 6, 43, 18, 0, 0, 178, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (480, 2475, 6, 42, 18, 0, 0, 173, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (481, 3072, 6, 41, 17, 0, 0, 170, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (482, 3674, 6, 40, 17, 0, 0, 163, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (483, 4277, 6, 39, 16, 0, 0, 159, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (484, 4872, 6, 38, 16, 0, 0, 153, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (485, 5448, 6, 37, 15, 0, 0, 146, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (486, 6009, 6, 36, 15, 0, 0, 139, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (487, 7070, 6, 34, 13, 0, 0, 123, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (488, 7558, 6, 33, 13, 0, 0, 118, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (489, 8005, 6, 32, 12, 0, 0, 112, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (490, 8427, 6, 31, 12, 0, 0, 107, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (491, 14579, 3, 23, 5, 0, 0, 46, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (492, 9143, 4, 14, 5, 0, 0, 42, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (493, 9230, 4, 22, 8, 0, 0, 70, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (494, 4303, 4, 32, 15, 0, 0, 146, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (495, 4207, 9, 6, 2, 0, 0, 14, 'на Волоколамск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (496, 7501, 9, 12, 4, 0, 0, 33, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (497, 10467, 9, 20, 7, 0, 0, 58, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (498, 12985, 9, 32, 11, 0, 0, 104, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (499, 8372, 7, 15, 5, 0, 0, 611, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (500, 3685, 7, 31, null, 0, 0, 532, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (501, 13017, 8, 29, 12, 0, 0, 109, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (502, 8003, 8, 13, 5, 0, 1, 36, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (503, 3070, 8, 4, 2, 0, 0, 6, 'на Ожерелье');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (504, 13966, 8, 37, 15, 0, 0, 139, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (505, 8852, 2, 26, 10, 0, 0, 91, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (506, 3607, 2, 6, 3, 0, 1, 14, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (507, 9524, 2, 15, 5, 0, 0, 36, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (508, 10803, 2, 22, 8, 0, 0, 67, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (509, 7103, 2, 30, 12, 0, 0, 108, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (510, 2412, 10, 4, 2, 0, 0, 10, 'на Дмитров');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (511, 7012, 10, 12, 4, 0, 0, 26, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (512, 11713, 10, 26, 10, 0, 1, 88, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (513, 12314, 10, 29, 12, 1, 0, 112, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (514, 15454, 1, 54, 24, 0, 0, 237, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (515, 226, 9, 0, 0, 0, 0, 0, 'на Волоколамск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (516, 1246, 9, 1, 1, 0, 0, 4, 'на Волоколамск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (517, 1820, 9, 2, 2, 0, 0, 5, 'на Волоколамск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (518, 2411, 9, 3, 2, 0, 0, 8, 'на Волоколамск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (519, 3007, 9, 4, 2, 0, 0, 9, 'на Волоколамск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (520, 3611, 9, 5, 2, 0, 0, 11, 'на Волоколамск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (521, 4805, 9, 7, 2, 0, 0, 17, 'на Волоколамск');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (522, 5379, 9, 8, 3, 0, 0, 23, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (523, 5939, 9, 9, 3, 0, 0, 22, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (524, 6486, 9, 10, 4, 0, 0, 29, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (525, 7011, 9, 11, 4, 0, 0, 31, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (526, 6552, 6, 35, 14, 0, 0, 132, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (527, 4208, 10, 7, 3, 0, 0, 15, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (528, 13621, 10, 30, 13, 0, 0, 118, 'all');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (529, 13729, 10, 31, 14, 0, 0, 124, 'all');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (530, 12677, 10, 31, 13, 1, 0, 119, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (531, 13263, 10, 27, 10, 0, 0, 94, 'all');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (532, 1247, 10, 2, 2, 0, 0, 6, 'на Дмитров');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (533, 5940, 10, 10, 3, 0, 0, 21, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (534, 6487, 10, 11, 3, 0, 0, 22, 'all');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (535, 223, 3, 0, 0, 0, 0, 0, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (536, 695, 3, 1, 1, 0, 0, 3, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (537, 1817, 3, 3, 2, 0, 0, 7, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (538, 3004, 3, 5, 2, 0, 0, 9, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (539, 3608, 3, 6, 2, 0, 0, 11, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (540, 4204, 3, 7, 2, 0, 0, 13, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (541, 4802, 3, 8, 2, 0, 0, 15, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (542, 5376, 3, 9, 2, 0, 0, 16, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (543, 5936, 3, 10, 3, 0, 0, 17, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (544, 6483, 3, 11, 3, 0, 0, 20, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (545, 227, 10, 0, 0, 0, 0, 0, 'Савёловское направление');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (546, 699, 10, 1, 1, 0, 0, 3, 'на Дмитров');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (547, 12121, 10, 29, 11, 1, 0, 102, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (548, 3008, 10, 5, 2, 0, 0, 12, 'на Дмитров');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (549, 4806, 10, 8, 3, 0, 0, 17, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (550, 696, 10, 22, 7, 0, 0, 64, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (551, 697, 7, 1, 1, 0, 0, 647, 'на Тверь');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (552, 1245, 7, 2, 1, 0, 0, 644, 'на Тверь');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (553, 1819, 7, 3, 2, 0, 0, 640, 'на Тверь');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (554, 2410, 7, 4, 2, 0, 0, 639, 'на Тверь');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (555, 213, 4, 0, 0, 0, 0, 0, 'на Калугу');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (556, 682, 4, 1, 1, 0, 0, 4, 'на Калугу');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (557, 1230, 4, 2, 1, 0, 0, 7, 'на Калугу');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (558, 1804, 4, 3, 2, 0, 0, 10, 'на Калугу');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (559, 2393, 4, 4, 2, 0, 0, 13, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (560, 2991, 4, 5, 3, 0, 1, 16, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (561, 4191, 4, 6, 3, 0, 0, 18, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (562, 4789, 4, 7, 3, 0, 0, 18, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (563, 3595, 4, 6, 3, 1, 0, 19, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (564, 5362, 4, 8, 3, 0, 0, 24, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (565, 5922, 4, 9, 4, 0, 1, 28, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (566, 6468, 4, 10, 4, 1, 0, 31, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (567, 6992, 4, 11, 4, 1, 0, 33, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (568, 7481, 4, 10, 4, 0, 0, 31, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (569, 7931, 4, 11, 4, 0, 0, 32, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (570, 8353, 4, 12, 5, 0, 0, 38, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (571, 8756, 4, 13, 5, 0, 0, 39, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (572, 9508, 4, 15, 5, 0, 0, 44, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (573, 9849, 4, 16, 6, 0, 0, 46, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (574, 10156, 4, 17, 6, 0, 0, 48, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (575, 10451, 4, 18, 6, 0, 0, 54, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (576, 10230, 4, 19, 7, 0, 0, 57, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (577, 9927, 4, 20, 7, 0, 0, 61, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (578, 9597, 4, 21, 7, 0, 0, 64, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (579, 8843, 4, 23, 8, 0, 0, 74, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (580, 8443, 4, 24, 9, 0, 0, 79, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (581, 8022, 4, 25, 10, 0, 0, 89, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (582, 7577, 4, 26, 11, 0, 0, 95, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (583, 7091, 4, 27, 12, 0, 0, 105, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (584, 6575, 4, 28, 12, 0, 0, 113, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (585, 6033, 4, 29, 13, 0, 0, 121, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (586, 5472, 4, 30, 14, 0, 0, 132, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (587, 4896, 4, 31, 15, 0, 0, 140, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (588, 3699, 4, 33, 16, 0, 0, 151, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (589, 3095, 4, 34, 16, 0, 0, 158, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (590, 2498, 4, 35, 16, 0, 0, 167, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (591, 1907, 4, 36, 17, 0, 1, 170, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (592, 2397, 4, 37, 18, 0, 0, 172, 'на Калугу-1');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (593, 2995, 4, 38, 19, 0, 0, 182, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (594, 1334, 4, 37, 18, 1, 0, 0, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (595, 780, 4, 38, 18, 1, 0, 0, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (596, 262, 4, 39, 19, 1, 0, 0, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (597, 11, 4, 40, 19, 1, 0, 192, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (598, 3006, 7, 5, 2, 0, 0, 637, 'на Тверь');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (599, 3610, 7, 6, 2, 0, 0, 635, 'на Тверь');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (600, 4206, 7, 7, 3, 0, 0, 632, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (601, 4804, 7, 8, 3, 0, 0, 631, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (602, 5378, 7, 9, 3, 0, 0, 625, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (603, 5938, 7, 10, 4, 0, 0, 623, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (604, 6485, 7, 11, 4, 0, 0, 622, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (605, 7010, 7, 12, 4, 0, 0, 619, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (606, 7500, 7, 13, 4, 0, 0, 616, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (607, 7950, 7, 14, 5, 0, 0, 613, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (608, 8775, 7, 16, 5, 0, 0, 608, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (609, 9162, 7, 17, 6, 0, 0, 603, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (610, 9527, 7, 18, 6, 0, 0, 600, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (611, 9589, 7, 19, 6, 0, 0, 598, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (612, 9222, 7, 20, 6, 0, 0, 594, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (613, 8835, 7, 21, 7, 0, 0, 585, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (614, 8434, 7, 22, 8, 0, 0, 582, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (615, 8012, 7, 23, 8, 0, 0, 578, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (616, 7567, 7, 24, 8, 0, 0, 574, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (617, 7079, 7, 25, 9, 0, 0, 568, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (618, 6563, 7, 26, 9, 0, 0, 565, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (619, 6020, 7, 27, 10, 0, 0, 561, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (620, 5459, 7, 28, 11, 0, 0, 561, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (621, 4883, 7, 29, 11, 0, 1, 545, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (622, 4289, 7, 30, null, 0, 0, 538, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (623, 3081, 7, 32, null, 0, 0, 524, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (624, 2484, 7, 33, null, 0, 0, 517, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (625, 1893, 7, 34, null, 0, 0, 509, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (626, 1319, 7, 35, null, 0, 0, 504, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (627, 766, 7, 36, null, 0, 0, 496, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (628, 249, 7, 37, null, 0, 0, 483, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (629, 1, 7, 38, null, 0, 0, 483, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (630, 12497, 7, 30, null, 1, 0, 7, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (631, 12675, 7, 31, null, 1, 0, 17, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (632, 12834, 7, 32, null, 1, 0, 24, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (633, 12984, 7, 33, null, 1, 0, 36, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (634, 15126, 1, 47, 20, 0, 0, 205, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (635, 1243, 3, 2, 1, 0, 0, 5, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (636, 2408, 3, 4, 3, 0, 0, 8, 'на Рязань и Черусти');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (637, 245, 8, 0, 0, 0, 0, 0, 'от Москвы');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (638, 755, 8, 1, 1, 0, 0, 1, 'на Ожерелье');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (639, 1309, 8, 2, 1, 0, 0, 4, 'на Ожерелье');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (640, 2474, 8, 3, 2, 0, 0, 6, 'на Ожерелье');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (641, 3672, 8, 5, 2, 0, 0, 11, 'на Ожерелье');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (642, 4275, 8, 6, 2, 0, 0, 17, 'на Ожерелье');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (643, 4870, 8, 7, 2, 0, 0, 17, 'на Ожерелье');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (644, 5446, 8, 8, 3, 0, 0, 18, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (645, 6007, 8, 9, 3, 0, 0, 20, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (646, 6550, 8, 10, 4, 0, 0, 24, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (647, 7068, 8, 11, 4, 0, 0, 27, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (648, 7556, 8, 12, 4, 0, 0, 36, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (649, 8425, 8, 14, 5, 1, 0, 41, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (650, 8826, 8, 15, 6, 1, 0, 45, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (651, 9213, 8, 16, 6, 1, 0, 47, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (652, 9580, 8, 14, 5, 0, 0, 40, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (653, 9912, 8, 15, 5, 0, 0, 42, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (654, 10218, 8, 16, 6, 0, 0, 48, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (655, 10510, 8, 17, 6, 0, 0, 51, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (656, 10782, 8, 18, 7, 0, 0, 56, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (657, 11044, 8, 19, 7, 0, 0, 63, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (658, 11297, 8, 20, 7, 0, 0, 67, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (659, 11533, 8, 21, 8, 0, 0, 73, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (660, 11753, 8, 22, 9, 0, 0, 79, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (661, 11960, 8, 23, 10, 0, 0, 85, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (662, 12160, 8, 24, 10, 0, 0, 89, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (663, 12353, 8, 25, 10, 0, 0, 93, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (664, 12536, 8, 26, 11, 0, 0, 98, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (665, 12711, 8, 27, 11, 0, 0, 102, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (666, 12868, 8, 28, 12, 0, 0, 104, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (667, 13157, 8, 30, 12, 0, 0, 113, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (668, 12110, 8, 31, 13, 0, 0, 117, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (669, 13419, 8, 32, 13, 0, 0, 120, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (670, 13539, 8, 33, 14, 0, 0, 127, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (671, 13650, 8, 34, 14, 0, 0, 130, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (672, 13759, 8, 35, 15, 0, 0, 134, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (673, 13863, 8, 36, 15, 0, 0, 136, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (674, 14065, 8, 38, 15, 0, 0, 145, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (675, 14159, 8, 39, 16, 0, 0, 147, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (676, 14250, 8, 40, 16, 0, 0, 151, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (677, 14340, 8, 41, 16, 0, 0, 155, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (678, 222, 12, 0, 0, 0, 0, 0, 'all');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (679, 1883, 12, 1, 0, 0, 0, 2, 'на Курское направление');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (680, 698, 12, 2, 0, 0, 0, 4, 'на Серпухов');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (681, 756, 12, 3, 0, 0, 0, 8, 'all');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (682, 246, 12, 4, 0, 0, 0, 9, 'all');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (683, 214, 12, 5, 0, 0, 0, 12, 'all');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (684, 222, 2, 0, 0, 0, 0, 0, 'Горьковское направление');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (685, 694, 2, 1, 1, 0, 0, 2, 'на Петушки');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (686, 1242, 2, 2, 2, 0, 0, 6, 'на Петушки');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (687, 1816, 2, 3, 2, 0, 0, 8, 'на Петушки');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (688, 2407, 2, 4, 2, 0, 0, 10, 'на Петушки');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (689, 3003, 2, 5, 2, 0, 0, 12, 'на Петушки');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (690, 4203, 2, 7, 3, 1, 0, 18, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (691, 4801, 2, 8, 3, 1, 0, 24, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (692, 5375, 2, 9, 4, 1, 0, 26, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (693, 5935, 2, 7, 3, 0, 0, 16, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (694, 6482, 2, 8, 3, 0, 0, 18, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (695, 7007, 2, 9, 3, 0, 0, 20, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (696, 7497, 2, 10, 3, 0, 0, 23, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (697, 7947, 2, 11, 4, 0, 0, 26, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (698, 8369, 2, 12, 4, 0, 0, 29, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (699, 8772, 2, 13, 4, 0, 0, 30, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (700, 9159, 2, 14, 4, 0, 0, 32, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (701, 9863, 2, 16, 5, 0, 0, 42, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (702, 10170, 2, 17, 6, 0, 0, 45, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (703, 10464, 2, 18, 6, 0, 0, 45, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (704, 10737, 2, 19, 6, 0, 1, 53, 'на Москву-курскую');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (705, 11316, 2, 20, 7, 0, 0, 60, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (706, 10999, 2, 20, 7, 1, 0, 58, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (707, 11251, 2, 21, 7, 1, 0, 59, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (708, 11488, 2, 22, 7, 1, 0, 59, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (709, 11709, 2, 23, 8, 1, 0, 67, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (710, 11065, 2, 21, 8, 0, 0, 64, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (711, 10531, 2, 21, 8, 0, 0, 74, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (712, 10238, 2, 22, 9, 0, 0, 79, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (713, 9935, 2, 23, 9, 0, 0, 84, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (714, 9607, 2, 24, 10, 0, 0, 86, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (715, 12672, 2, 23, 8, 1, 0, 69, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (716, 12831, 2, 24, 8, 1, 0, 72, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (717, 12982, 2, 25, 9, 1, 0, 81, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (718, 13123, 2, 26, 9, 1, 0, 83, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (719, 9240, 2, 25, 10, 0, 0, 89, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (720, 8452, 2, 27, 10, 0, 0, 97, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (721, 8033, 2, 28, 11, 0, 0, 100, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (722, 7588, 2, 29, 12, 0, 0, 104, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (723, 6587, 2, 31, 12, 0, 0, 112, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (724, 6045, 2, 32, 13, 0, 0, 115, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (725, 5485, 2, 32, 13, 0, 0, 120, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (726, 4908, 2, 34, 14, 0, 0, 124, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (727, 5380, 10, 9, 3, 0, 0, 19, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (728, 8374, 10, 17, 4, 0, 0, 33, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (729, 4316, 2, 35, 14, 0, 0, 134, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (730, 3711, 2, 36, 15, 0, 0, 142, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (731, 3107, 2, 37, 16, 0, 0, 144, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (732, 1915, 2, 38, 17, 0, 0, 159, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (733, 1342, 2, 39, 18, 0, 0, 169, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (734, 790, 2, 40, 18, 0, 0, 173, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (735, 271, 2, 41, 19, 0, 0, 180, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (736, 17, 2, 42, 20, 0, 0, 190, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (737, 7951, 9, 13, 5, 0, 0, 36, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (738, 8373, 9, 14, 5, 0, 0, 38, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (739, 8776, 9, 15, 5, 0, 0, 41, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (740, 9163, 9, 16, 5, 0, 0, 44, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (741, 9528, 9, 17, 6, 0, 0, 49, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (742, 9866, 9, 18, 6, 0, 0, 52, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (743, 10173, 9, 19, 6, 0, 0, 54, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (744, 10740, 9, 21, 7, 0, 0, 60, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (745, 11002, 9, 22, 7, 0, 0, 62, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (746, 11254, 9, 23, 8, 0, 0, 68, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (747, 11491, 9, 24, 8, 0, 0, 72, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (748, 11712, 9, 25, 8, 0, 0, 75, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (749, 11920, 9, 26, 9, 0, 0, 78, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (750, 12120, 9, 27, 9, 0, 0, 80, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (751, 12313, 9, 28, 9, 0, 0, 86, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (752, 12498, 9, 29, 10, 0, 0, 87, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (753, 12676, 9, 30, 10, 0, 0, 90, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (754, 13126, 9, 33, 12, 0, 0, 112, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (755, 12835, 9, 31, 11, 0, 0, 95, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (756, 13262, 9, 34, 13, 0, 0, 118, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (757, 10248, 9, 35, 14, 0, 0, 125, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (758, 9947, 9, 36, 14, 0, 0, 132, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (759, 9619, 9, 37, 14, 0, 0, 135, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (760, 9252, 9, 38, 15, 0, 0, 140, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (761, 8864, 9, 39, 15, 0, 0, 144, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (762, 8465, 9, 40, 15, 0, 0, 148, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (763, 8047, 9, 41, 16, 0, 0, 153, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (764, 1821, 10, 3, 2, 0, 0, 8, 'на Дмитров');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (765, 3612, 10, 6, 2, 0, 0, 13, 'на Дмитров');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (766, 7502, 10, 13, 4, 0, 0, 27, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (767, 7952, 10, 14, 4, 0, 0, 30, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (768, 8777, 10, 16, 4, 0, 0, 35, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (769, 9164, 10, 17, 5, 0, 0, 38, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (770, 9529, 10, 18, 5, 0, 0, 44, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (771, 9867, 10, 19, 6, 0, 0, 49, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (772, 10174, 10, 20, 6, 0, 0, 49, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (773, 224, 10, 21, 7, 0, 0, 58, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (774, 11003, 10, 23, 8, 0, 0, 69, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (775, 11255, 10, 24, 8, 0, 0, 74, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (776, 11492, 10, 26, 10, 0, 0, 88, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (777, 13389, 10, 28, 11, 0, 0, 100, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (778, 13510, 10, 29, 12, 0, 0, 110, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (779, 11921, 10, 27, 11, 1, 0, 97, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (780, 12499, 10, 30, 13, 1, 0, 115, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (781, 12519, 10, 32, 15, 0, 0, 129, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (782, 12836, 10, 32, 13, 1, 0, 122, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (783, 12986, 10, 33, 14, 1, 0, 126, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (784, 13127, 10, 34, 14, 1, 0, 132, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (785, 15077, 3, 12, 3, 0, 0, 22, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (786, 15130, 3, 13, 3, 0, 0, 25, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (787, 15149, 3, 14, 4, 0, 0, 27, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (788, 15095, 3, 15, 4, 0, 0, 29, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (789, 15040, 3, 16, 4, 0, 0, 31, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (790, 14981, 3, 17, 4, 0, 0, 33, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (791, 14919, 3, 18, 4, 0, 0, 35, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (792, 14854, 3, 19, 5, 0, 0, 38, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (793, 14790, 3, 20, 5, 0, 0, 40, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (794, 14725, 3, 21, 5, 0, 0, 42, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (795, 14654, 3, 22, 5, 0, 0, 44, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (796, 14505, 3, 24, 6, 0, 0, 47, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (797, 14431, 3, 25, 6, 0, 0, 50, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (798, 14347, 3, 26, 6, 0, 0, 54, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (799, 14258, 3, 27, 7, 0, 0, 57, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (800, 14166, 3, 28, 7, 0, 0, 60, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (801, 14072, 3, 29, 7, 0, 0, 63, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (802, 13973, 3, 30, 7, 0, 0, 65, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (803, 13870, 3, 31, 8, 0, 0, 67, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (804, 13764, 3, 32, 8, 0, 0, 69, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (805, 13655, 3, 33, 8, 0, 0, 72, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (806, 13545, 3, 34, 9, 0, 0, 78, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (807, 13299, 3, 36, 10, 0, 0, 88, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (808, 13164, 3, 37, 10, 0, 0, 90, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (809, 13025, 3, 38, 10, 0, 0, 94, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (810, 12876, 3, 39, 11, 0, 0, 95, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (811, 12719, 3, 40, 11, 0, 0, 97, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (812, 12546, 3, 41, 11, 0, 0, 102, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (813, 12363, 3, 42, 11, 0, 0, 104, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (814, 12170, 3, 43, 12, 0, 0, 110, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (815, 11970, 3, 44, 12, 0, 0, 113, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (816, 11763, 3, 45, 12, 0, 0, 114, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (817, 11545, 3, 46, 13, 0, 0, 117, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (818, 11309, 3, 47, 13, 0, 0, 121, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (819, 10793, 3, 48, 14, 0, 0, 127, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (820, 13426, 3, 35, 9, 0, 0, 84, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (821, 10228, 3, 49, 15, 0, 0, 136, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (822, 9925, 3, 50, 15, 0, 0, 142, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (823, 9595, 3, 51, 15, 0, 0, 146, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (824, 9228, 3, 52, 16, 0, 0, 153, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (825, 8841, 3, 53, 16, 0, 0, 159, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (826, 7008, 3, 12, 3, 1, 0, 24, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (827, 7498, 3, 13, 4, 1, 0, 28, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (828, 7948, 3, 14, 4, 1, 0, 30, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (829, 8370, 3, 15, 4, 1, 0, 33, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (830, 8773, 3, 16, 4, 1, 0, 35, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (831, 9160, 3, 17, 5, 1, 0, 39, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (832, 9525, 3, 18, 5, 1, 0, 41, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (833, 9864, 3, 19, 5, 1, 0, 46, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (834, 10171, 3, 20, 6, 1, 0, 49, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (835, 10465, 3, 21, 6, 1, 0, 50, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (836, 10738, 3, 22, 6, 1, 0, 53, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (837, 11000, 3, 23, 6, 1, 0, 55, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (838, 11252, 3, 24, 7, 1, 0, 57, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (839, 11489, 3, 25, 7, 1, 0, 67, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (840, 11710, 3, 26, 7, 1, 0, 63, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (841, 11918, 3, 27, 8, 1, 0, 68, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (842, 12118, 3, 28, 8, 1, 0, 73, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (843, 12311, 3, 29, 9, 1, 0, 77, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (844, 12495, 3, 30, 9, 1, 0, 81, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (845, 12673, 3, 31, 10, 1, 0, 88, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (846, 12983, 3, 32, 10, 1, 0, 90, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (847, 13124, 3, 33, 10, 1, 0, 95, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (848, 13260, 3, 34, 11, 1, 0, 100, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (849, 13619, 3, 35, 12, 1, 0, 107, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (850, 13727, 3, 36, 12, 0, 0, 112, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (851, 13939, 3, 37, 13, 0, 0, 119, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (852, 14040, 3, 38, 13, 0, 0, 126, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (853, 14136, 3, 39, 14, 0, 0, 131, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (854, 14227, 3, 40, 14, 0, 0, 136, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (855, 14319, 3, 41, 15, 1, 0, 143, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (856, 14402, 3, 42, 15, 1, 0, 147, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (857, 11365, 3, 43, 16, 1, 0, 157, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (858, 11120, 3, 44, 17, 1, 0, 165, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (859, 10859, 3, 45, 17, 1, 0, 170, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (860, 10593, 3, 46, 17, 1, 0, 177, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (861, 10304, 3, 47, 18, 1, 0, 184, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (862, 10004, 3, 48, 19, 0, 0, 188, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (863, 9683, 3, 49, 19, 1, 0, 197, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (864, 8942, 3, 50, 20, 1, 0, 210, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (865, 8440, 3, 54, 17, 0, 0, 164, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (866, 8019, 3, 55, 17, 0, 0, 170, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (867, 7574, 3, 56, 18, 0, 0, 175, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (868, 6570, 3, 57, 18, 0, 0, 180, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (869, 6027, 3, 58, 19, 0, 0, 182, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (870, 5465, 3, 59, 19, 0, 0, 184, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (871, 4889, 3, 60, 19, 0, 0, 185, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (872, 4296, 3, 61, 19, 0, 0, 187, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (873, 3088, 3, 63, 19, 0, 0, 189, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (874, 1900, 3, 64, 20, 0, 0, 192, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (875, 1326, 3, 65, 20, 0, 0, 195, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (876, 7, 3, 66, 20, 0, 0, 198, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (877, 8, 3, 67, 20, 0, 0, 199, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (878, 3692, 3, 62, 19, 0, 0, 188, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (879, 228, 11, 0, 0, 0, 0, 0, 'на Мытищи');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (880, 700, 11, 1, 1, 0, 0, 3, 'на Мытищи');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (881, 1248, 11, 2, 1, 0, 0, 5, 'на Мытищи');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (882, 1822, 11, 3, 2, 0, 0, 6, 'на Мытищи');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (883, 2413, 11, 4, 2, 0, 0, 8, 'на Мытищи');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (884, 3009, 11, 5, 2, 0, 0, 10, 'на Мытищи');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (885, 3613, 11, 6, 2, 0, 0, 12, 'на Мытищи');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (886, 4209, 11, 7, 3, 0, 0, 14, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (887, 4807, 11, 8, 3, 0, 0, 16, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (888, 5381, 11, 9, 3, 0, 0, 18, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (889, 13128, 11, 10, 3, 0, 0, 20, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (890, 13264, 11, 11, 3, 0, 0, 22, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (891, 13390, 11, 12, 3, 0, 0, 24, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (892, 13511, 11, 13, 4, 0, 0, 26, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (893, 13622, 11, 14, 4, 0, 0, 28, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (894, 13730, 11, 15, 4, 0, 0, 30, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (895, 13836, 11, 16, 4, 0, 0, 33, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (896, 13940, 11, 17, 5, 0, 0, 36, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (897, 14041, 11, 18, 5, 0, 0, 40, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (898, 14137, 11, 19, 5, 0, 0, 43, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (899, 14229, 11, 20, 5, 0, 0, 45, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (900, 14703, 11, 21, 6, 0, 0, 48, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (901, 14768, 11, 22, 6, 0, 0, 51, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (902, 14833, 11, 23, 6, 0, 0, 54, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (903, 14899, 11, 24, 7, 0, 0, 56, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (904, 14964, 11, 25, 7, 0, 0, 59, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (905, 15024, 11, 26, 8, 0, 0, 65, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (906, 15079, 11, 27, 8, 0, 0, 70, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (907, 15132, 11, 28, 9, 0, 0, 76, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (908, 8774, 11, 29, 9, 0, 0, 81, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (909, 15227, 11, 30, 9, 0, 0, 83, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (910, 15277, 11, 31, 10, 0, 0, 85, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (911, 15323, 11, 31, 10, 0, 0, 85, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (912, 15369, 11, 33, 11, 0, 0, 95, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (913, 15415, 11, 34, 11, 0, 0, 103, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (914, 9161, 11, 35, 12, 0, 0, 111, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (915, 12737, 11, 36, 13, 0, 0, 124, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (916, 12567, 11, 37, 14, 0, 0, 129, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (917, 11477, 4, 22, 7, 1, 0, 0, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (918, 11240, 4, 21, 7, 1, 0, 0, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (919, 5941, 11, 11, 3, 1, 0, 21, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (920, 6488, 11, 12, 3, 1, 0, 25, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (921, 7013, 11, 13, 4, 1, 0, 29, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (922, 7503, 11, 14, 4, 1, 0, 28, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (923, 7953, 11, 15, 4, 1, 0, 32, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (924, 8375, 11, 16, 4, 1, 0, 34, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (925, 8778, 11, 17, 4, 1, 0, 36, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (926, 10468, 11, 18, 5, 1, 0, 37, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (927, 10741, 11, 19, 5, 1, 0, 39, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (928, 11004, 11, 20, 5, 1, 0, 40, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (929, 11256, 11, 21, 5, 1, 0, 43, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (930, 11493, 11, 22, 5, 1, 0, 45, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (931, 12315, 11, 23, 6, 1, 0, 49, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (932, 12500, 11, 24, 6, 1, 0, 54, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (933, 12678, 11, 25, 7, 1, 0, 59, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (934, 12837, 11, 26, 7, 1, 0, 64, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (935, 9165, 11, 13, 4, 2, 0, 26, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (936, 9530, 11, 14, 4, 2, 0, 30, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (937, 9868, 11, 15, 4, 2, 0, 32, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (938, 10175, 11, 16, 4, 2, 0, 34, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (939, 11714, 11, 17, 5, 2, 0, 36, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (940, 11922, 11, 18, 5, 2, 0, 40, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (941, 12122, 11, 19, 5, 2, 0, 41, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (942, 10737, 11, 27, 8, 1, 0, 73, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (943, 14321, 11, 21, 6, 1, 0, 46, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (944, 14403, 11, 22, 6, 1, 0, 49, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (945, 14481, 11, 23, 6, 1, 0, 42, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (946, 14555, 11, 24, 7, 1, 0, 56, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (947, 14631, 11, 25, 7, 1, 0, 59, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (948, 14320, 3, 37, 11, 1, 0, 0, 'на Куровскую');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (949, 14228, 3, 38, 10, 1, 0, 0, 'на Куровскую');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (950, 13387, 3, 39, 11, 1, 0, 0, 'на Куровскую');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (951, 12832, 3, 32, 10, 1, 0, 0, 'на Куровскую');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (952, 16564, 3, 47, 13, 1, 0, 120, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (953, 16571, 3, 48, 13, 1, 0, 123, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (954, 16578, 3, 49, 14, 1, 0, 126, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (955, 16585, 3, 50, 14, 1, 0, 128, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (956, 16590, 3, 51, 14, 1, 0, 130, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (957, 16594, 3, 52, 15, 1, 0, 134, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (958, 16599, 3, 53, 15, 1, 0, 135, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (959, 16603, 3, 54, 15, 1, 0, 138, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (960, 16607, 3, 55, 15, 1, 0, 144, 'на Москву');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (961, 13508, 3, 40, 11, 1, 0, 0, 'на Куровскую');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (962, 13834, 3, 41, 12, 1, 0, 0, 'на Куровскую');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (963, 14630, 3, 42, 12, 1, 0, 0, 'на Куровскую');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (964, 14702, 3, 43, 12, 1, 0, 0, 'на Куровскую');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (965, 16504, 3, 41, 15, 1, 0, 148, 'на Кривандино');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (966, 16521, 3, 42, 15, 1, 0, 157, 'на Кривандино');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (967, 16528, 3, 43, 15, 1, 0, 165, 'на Кривандино');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (968, 16535, 3, 44, 16, 1, 0, 173, 'на Кривандино');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (969, 16542, 3, 45, 16, 1, 0, 177, 'на Кривандино');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (970, 16550, 3, 46, 16, 1, 0, 183, 'на Кривандино');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (971, 16557, 3, 47, 17, 1, 0, 189, 'на Кривандино');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (972, 16610, 3, 56, 16, 1, 0, 147, 'на Голутвин');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (973, 16613, 3, 57, 16, 1, 0, 155, 'на Голутвин');
INSERT INTO `#__rw_station_directions` (id, stationID, directionID, indexID, zoneID, level, new_level, distance, default_schedule) VALUES (974, 16615, 3, 58, 16, 1, 0, 156, 'на Голутвин');

CREATE TABLE IF NOT EXISTS `#__rw_turnstiles`
(
    `id`      int(11)      NOT NULL,
    `title` varchar(255) NOT NULL
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  DEFAULT CHARSET = utf8 COMMENT ='Варианты установки турникетов';

INSERT INTO `#__rw_turnstiles` (`id`, `title`) VALUES
(1, 'На всех платформах'),
(2, 'На Москву'),
(3, 'Из Москвы'),
(4, 'На экспрессных платформах'),
(5, 'На всех платформах, кроме БМО'),
(6, 'На всех платформах, кроме Фрязинской'),
(7, 'На главной платформе');

ALTER TABLE `#__rw_turnstiles`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `#__rw_turnstiles`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;

alter table `#__rw_stations`
    add turnstiles int default null null comment 'Турникеты';

alter table `#__rw_stations`
    add constraint `#__rw_stations_#__rw_turnstiles_id_fk`
        foreign key (turnstiles) references `#__rw_turnstiles` (id);

CREATE TABLE IF NOT EXISTS `ildjs_rw2_station_tickets`
(
    `id`          int(11)    NOT NULL,
    `stationID`   int(11)    NOT NULL,
    `turnstiles`  tinyint(4)          DEFAULT NULL,
    `tpd`         tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Терминалы пред продажи',
    `time_1`      time                DEFAULT NULL COMMENT 'Начало работы касс',
    `time_2`      time                DEFAULT NULL COMMENT 'Конец работы касс',
    `timemask`    varchar(7) NOT NULL COMMENT 'Временная маска по дням недели',
    `detour`      text COMMENT 'Обход турникетов',
    `time_check`  date                DEFAULT NULL COMMENT 'Дата проверки актуальности обхода',
    `thanks`      int(11)             DEFAULT NULL COMMENT 'Благодарности (ID юзера)',
    `show_thanks` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Показывать благодарность',
    `mod_date`    timestamp  NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата изменения',
    `esr`         int(11)    NOT NULL
) ENGINE = InnoDB
  AUTO_INCREMENT = 780
  DEFAULT CHARSET = utf8 COMMENT ='Турникеты и время работы касс';

INSERT INTO `ildjs_rw2_station_tickets` (`id`, `stationID`, `turnstiles`, `tpd`, `time_1`, `time_2`, `timemask`, `detour`, `time_check`, `thanks`, `show_thanks`, `mod_date`, `esr`) VALUES
(3, 6072, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-13 10:46:33', 237810),
(6, 6115, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 238921),
(7, 6123, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 239125),
(8, 6111, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 238813),
(9, 6118, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 238955),
(10, 6122, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 239110),
(14, 4906, 1, 0, NULL, NULL, '1111111', '<p>Обходинг есть только в сторону юга и метро , в сторону мцк все изрыто. По насыпи со стороны метро и дальше по перилам на платформу.</p>', NULL, 0, 1, '2018-11-06 07:39:18', 196023),
(16, 6075, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 237844),
(21, 6076, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 237859),
(27, 6114, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 238917),
(28, 4905, 1, 0, NULL, NULL, '1111111', '<p><span style="color: #ff6600;">На торцах платформ установлены треугольники.</span></p>\r\n<p><strong>Вариант 1</strong></p>\r\n<p>Лучше всего турникеты обходить с юга станции. Иногда в часы пик на краях платформы дежурят ЧОПовцы, мешая электричкерам забраться. Периодически край платформы мажут солидолом - следует быть аккуратным, возможно запачкать одежду. Ещё есть вариант прямо с платформы у турникетного павильона спрыгнуть в переход, который ведёт в метро, но там сейчас подзаварили и прыгать придётся высоко + народу уйма там ходит, можно неудачно приземлиться. С севера станции турникеты обходить очень долго, более того, путь может сопровождаться крысами. </p>\r\n<p><strong>Вариант 2</strong><br /><br />Приехал из области, дошёл до северного конца платформы (последний вагон), спустился, немного прошёл вдоль забора и увидел большую дыру (кажется, целой секции нет), вышел, вернулся к метро. Да, немного дольше идти, но это компенсируется комфортом: перекладина забора образует ступеньку, т.е. не надо ни прыгать, ни садиться =&gt; можно использовать в любой одежде и обуви. Пару раз я так с чемоданом выходил. <br />P.s. На вход таким путём тоже препятствий не вижу, надо будет попробовать.</p>', NULL, 0, 1, '2017-11-30 16:42:00', 196019),
(29, 4904, 1, 0, NULL, NULL, '1111111', '<p>Около Стардогса прыгаем на рельсы, идем прямо вдоль бетонного забора, поворачиваем к платформе Савёловская и пролезаем сквозь забор, спускаемся в переход и идем в метро.</p>', NULL, 0, 1, '2017-09-28 22:02:51', 196004),
(30, 4902, 1, 0, NULL, NULL, '1111111', '<p>Самая неудобная станция в плане обхода. Единственный оптимальный вариант - паровозик.</p>', NULL, 0, 1, '2017-09-28 22:07:53', 195800),
(31, 4903, 1, 0, NULL, NULL, '1111111', '<p>Обход через переход с московского торца.</p>', NULL, 0, 1, '2017-09-28 22:08:52', 195815),
(32, 6073, 1, 0, NULL, NULL, '1111111', '<p>Обход через переходы с любого торца платформы.</p>', NULL, 0, 1, '2017-09-28 22:09:14', 237825),
(33, 5378, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210930),
(34, 6078, 4, 0, NULL, NULL, '1111111', '<p>Так как турникеты есть только на экспрессной платформе, обойти их очень просто - спрыгиваем с любого торца платформы (точно можно с савёловского торца, с московского не проверялось), переходим пути и залезаем на торец любой другой платформы (они там весьма низкие), далее через переход идем в город.</p>', NULL, 0, 1, '2017-09-28 22:10:19', 237908),
(35, 6104, 1, 0, NULL, NULL, '1111111', '<p>Масса вариантов: можно перелезть забор рядом с турникетным павильоном (иногда это палится, зато самый быстрый вариант). Можно обойти с московской стороны (тропа хорошо натоптана, но может быть залита водой). Можно обойти и с савёловской стороны (скорее всего, понадобится лезть на грузовую платформу), наконец, можно перелезть прямо по створке рядом с турникетами, а тем, кому надо на левую сторону от Москвы, вообще не надо париться - турникетов там нет.</p>', NULL, 0, 1, '2017-09-28 22:11:19', 238404),
(36, 1465, 1, 0, NULL, NULL, '1111111', '<p>На неизвестный срок (закрыли в 2016, обещали не меньше трёх лет) закрыт тоннель, ведущий в метро. Однако турникетный павильон там работает.</p>\r\n<p>Турникетов много, они отличаются высокими, отъезжающими вбок, створками, но пристроиться всё равно можно. ЧОП довольно агресссивен. Впрочем, иногда чоповцев может вообще не быть даже на турникетной линии у спуска сразу к метро (после того, как закрыли проход к метро, что пассажиров, что ЧОПовцев там найти сложно даже в час-пик). В турникетном павильоне, ведущем на ПДСные пути как правило кто-то дежурит, иногда можно и не встретить там ЧОП, только оператора дурникетов, которому пофиг на зайцев.</p>\r\n<p>Самый быстрый путь пересадки с ПДСа на электричку - через торцы пригородных платформ. Официальный проход подразумевает либо приобретение билета в автомате (который может не работать, а также не пробивает льготные билеты), либо лонгволкинг через здание вокзала, Комсомольскую площадь и вестибюль метро к кассам у фонтана. Можно попытаться проникнуть через забор около турникетного павильона, ведущего в метро. Также раньше существовал читерный проход через кафешки, имеющие вход как со стороны пригорода, так и со стороны ПДСов, после реконструкции возможно осталась, возможно не осталась лазейка.</p>\r\n<p>На торцах пригородных платформ утром и вечером дежурят 1-2 ЧОП с приветом из южных стран. Как правило, равнодушно относятся к зайцам. Самый простой способ попасть в пригородную зону: по самой ближней платформе ПДС к пригородным путям пройти до конца (особо хардкорным электричкерам можно до середины, и при наличии Ласточки, в середине сцепа пролезть между двумя головными вагонами), спрыгнуть с платформы и забраться на платформу между 2 и 4 путем (там есть даже лесенка, просьба быть осторожным, не сломайте ее, хрупкая). Забор между пригородными путями (сечас используются под ласточки) и ПДСными платформами демонтирован. Но использовать его для обходинга можно только если там нет поезда на путях.</p>\r\n<p>Совсем хардкорным электричкерам и ласточка не помеха из-за особенностей сцепки поездов (по схеме 5+5 вагонов). Есть служебный проход и калитка на самой крайней, 12-ой платформе. Служебный проход на платформе между 10 и 12 путем. На 14-ом (самом крайнем) - все наглухо заварено, закрыто и т.д.</p>\r\n<p>Недавно после реконструкции турникеты возле выхода из метро вынесли под открытое небо, добавив возможностей для успешного читерного прохода. Створки турникетов при зажатии паровозера немного разъезжаются, давая возможность пролезть даже с сумкой или рюкзаком.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60073),
(37, 1464, 1, 0, NULL, NULL, '1111111', '<p>Спрыг с областного торца, 200 метров вдоль жд, и направо. Под Крестовском мостом со стороны Алексеевской дыра.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60069),
(38, 1463, 1, 0, NULL, NULL, '1111111', '<p>Время от времени в заборе у первого вагона в Москву появляются вырезанные прутья. Если прутья заварены, то в сторону Москвы есть место, где можно протиснуться через забор. Можно применить забор-лазинг в любом удобном месте.</p>\r\n<p>Есть выход в сторону Москвы возле штрафстоянки. Также существует длинный обходинг до эстакады монорельса в сторону области.</p>\r\n<p>Раньше ЧОП на турникетах спал и бездельничал, а теперь следит. Иногда сразу два активных чоповца на павильон. В связи с этим для успешного выполнения паровозинга нужно обладать некоторой долей наглости и проворности. Северный павильон охраняют сильнее, чем южный. Внимательный электричкер заметит один хитрый и наглый способ обойти турникеты. Переход на другую платформу без тикета возможен только по путям. Также нужно учитывать, что на участке от платформы Останкино до Ленинградского вокзала движение поездов левостороннее.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60054),
(39, 1462, 1, 0, NULL, NULL, '1111111', '<p>Вокруг платформы построили трёхметровый основательный бетонный забор. Со стороны платформ в область забор длится аж до самого путепровода через Большую Академическую улицу. Впрочем, несмотря на кажущуюся неприступность - дырок разной удобности всё равно полно. Выход со стороны области - либо через традиционную калитку посередине деревянной платформы (в последнее время там стоит ЧОПовец и перекрывает проход своим телом), либо забор-лазинг за турникетами (недавно там наварили сверху дополнительных секций, поэтому проход усложнён), либо лонгволкинг в сторону Москвы - там где-то есть дырка пока строят бетонный забор.</p>\r\n<p>По состоянию на апрель 2016 - есть два прохода мимо бетонного забора, где идут строительные работы, расположены в разных концах платформы. Также есть дырка в заборе ближе к пешеходному мосту у метро. Выход с платформы "Из Москвы" везде подразумевает паровозинг или забор-лазинг. Наглые электричкеры перелезают прямо рядом с турникетами, менее наглые - на месте снесённых ларьков и авторныка (кстати, такой путь быстрее и короче, чем официальный через турникеты), также есть дырка ближе к метро, но в последнее время там наварили дополнительных секций, приходится перелезать хлипковатый, но удобный забор из двух секций по пояс. Всё равно экономит время по сравнению с официальным выходом. Иногда на платформе тусуются чоперы, которые вроде как должны гонять электричкеров. Лечатся указанием направления в сторону детородного органа. Применять паровозинг не очень рекомендуется в связи с обилием чоповцев у турникетных линий. Впрочем полностью исключать этот вариант тоже не стоит.</p>\r\n<p>Переходить по путям следует осторожно по причине движения Ласточек и Сапсанов. Крайне редко (раз в полгода-год) там проходят показушные рейды с журналистами и принималовом за хождение по путям. Стоит отметить, что МТППК совместно с РЖД особенно рьяно следит за дырками на "Петраше" и старается оперативно усложнять выход электричкерам.</p>\r\n<p>Проход к пл. Окружная теперь возможен только так:</p>\r\n<p><img style="border-width: 1px;" src="https://pp.vk.me/c630020/v630020475/352ff/Tn4TPtm_vNo.jpg" alt="Пройти от Петровско-разумовской к Окружной" width="1024" height="768" /></p>\r\n<p>Планируется, что платформы будут переносить ближе к метро и пересечению с Савёловским направлением.  </p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60048),
(40, 1461, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-08-17 13:30:03', 60035),
(51, 4517, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 09:26:53', 183409),
(52, 4529, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:05:45', 184129),
(53, 4523, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:04:47', 183803),
(54, 4977, 1, 0, NULL, NULL, '1111111', '<p>Обход через аэроэкспрессную, либо ПДС-ную платформу. Эти платформы имеют отдельный выход из метро. Калитки на торцах обычно открыты, есть легальный переход через пути. Также стоит учесть, что довольно часто электрички приходят на неотурникеченные ПДС-ные платформы. В этом случае у выхода из подземного перехода стоят быдланы (вроде бы их можно обойти с калужского торца платформ).</p>\r\n<p>На турникетах быдланов уже достаточно, также могут перекрывать наиболее быстрый аэроэкспрессный путь обхода, иногда тусят на торцах возле калитки. Пофигистичны.</p>', NULL, 0, 1, '2017-10-04 10:19:21', 198103),
(55, 4436, 1, 0, NULL, NULL, '1111111', 'С западной стороны у подземного перехода можно через забор перелезть, там прут решетки посередине очень удобно приварен. Либо напротив южного торца платформы с той же западной стороны от платформы есть свободный выход на улицу.', NULL, NULL, 1, '2017-09-07 13:41:59', 180203),
(56, 4437, 1, 0, NULL, NULL, '1111111', '<p>Возможен обходдинг с обеих торцов платформы. Кроме того, очень лёгок забор-лазинг. Очень редко во время рейдов на торцах дежурят пофигистичные ЧОПовцы.</p>\r\n<p>Паровозик прокатывает хорошо.</p>', NULL, 0, 1, '2017-10-04 10:20:15', 180218),
(57, 4439, 1, 0, NULL, NULL, '1111111', '<p>С областного торца любой платформы можно спрыгнуть и дойти до пешеходного перехода через ЖД пути где можно выйти в город.</p>', NULL, 0, 1, '2017-10-04 10:21:05', 180504),
(58, 4442, 1, 0, NULL, NULL, '1111111', '<p>Обходинг легчайший: если нужно попасть на платформу - то проще зайти с северной части платформы, со стороны ж/д переезда со шлагбаумом, обходите по путям здание касс - и вы, как белый человек, по лестнице или пандусу входите на платформу (с южной стороны можно обойти забор, но на платформу уже придётся лезть).</p>\r\n<div align="left">Если нужно выйти с платформы (с приехавшего поезда) - первый вариант: дождаться пока все пассажиры уйдут в здание павильона к турникетам (а вместе с ними и быдланчик), и спокойно пройти мимо павильона по путям к переезду. Второй вариант: сразу спрыгивать с южного края платформы и идти вдоль забора (не актуально для сырой погоды - пока дойдёшь до асфальта, все штаны в грязи будут).</div>', NULL, 0, 1, '2017-10-04 10:22:04', 180538),
(59, 4440, 1, 0, NULL, NULL, '1111111', '<p>Обходинг легкий в обе стороны - в сторону Калуги просто спрыгиваем у турникетного павильона и проходим 50м до переезда; в сторону Москвы же спрыгиваем с торца и проходим метров 100 до окончания забора.</p>\r\n<p>Также в заборе время от времени появляются дырки, есть удобные варианты его перелезть.</p>', NULL, 0, 1, '2017-10-04 10:48:10', 180519),
(60, 4446, 1, 0, NULL, NULL, '1111111', '<p>Обходов практически нет: с одной стороны турникеты Аэроэкспресса, с другой стороны тоннель, в который едва ли влезут вместе электричка и человек. В качестве вылаза остаётся перепргивание турникетов.</p>', NULL, 0, 1, '2017-10-04 10:48:43', 180716),
(61, 4516, 1, 0, NULL, NULL, '1111111', '<p>На крайней платформе в сторону Калуги есть много залазов.</p>\r\n<p>Во первых, между забором и платформой приличное расстояние, так что худые электричкеры могут вполне просто пролезть под забором в районе остановки последнего вагона и спрыгнуть. Также у самого края под платформой есть дыра, которая иногда заделывается. Обходинг тоже вполне возможен, если идти от этой платформы в сторону Москвы, забор через некоторое расстояние уйдет в холм.</p>\r\n<p>Так-же у первого вагона из Москвы у калужской платформы есть калитка которая почти всегда открыта, если же она закрыта, то идём чуть дальше и там пути уходят за забор к ЛОВД! ВНИМАНИЕ, ВОЗМОЖНО ПРИНИМАЛОВО !  <br /><br />А для выхода с другой платформы прыгайте у последнего вагона и идите по заросшему пути до конца забора.</p>', NULL, 0, 1, '2017-10-04 10:49:44', 183305),
(62, 4522, 1, 0, NULL, NULL, '1111111', '<p>Либо обход по забору в сторону Калуги с платформы от Москвы (занимает порядка 3-5 минут), либо запрыг/спрыг через забор ближе к ТЦ Атлас (с платформы на Калугу, 1-2 минуты, однако прыгать придётся довольно высоко).</p>', NULL, 0, 1, '2017-10-04 10:50:13', 183704),
(63, 4524, 1, 0, NULL, NULL, '1111111', '<p>Платформа на Москву, с Калужской стороны открыта калитка. Кликабельные фотки:</p>\r\n<p><a href="images/wayout/Maloyar-1.jpg"><img style="border-width: 1px;" src="images/wayout/Maloyar-1_small.jpg" alt="Как обойти турникеты на станции Малоярославец" width="480" height="270" /></a></p>\r\n<p><a href="images/wayout/Maloyar-2.jpg"><img style="border-width: 1px;" src="images/wayout/Maloyar-2_small.jpg" alt="Как обойти турникеты на станции Малоярославец" width="480" height="270" /></a></p>', NULL, 0, 1, '2018-01-09 09:50:55', 183907),
(64, 1460, 1, 0, NULL, NULL, '1111111', '<p>Обходинг достаточно прост. С областных торцов спрыгиваем и проходим в дырку на сортировочной станции, там же поднимаемся на надземный переход, если это нужно.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60020),
(65, 1458, 1, 0, NULL, NULL, '1111111', '<p>Турникеты включены и работают на обоих платформах. В этом случае идём в сторону Ангарской улицы, проходим несколько десятков метров в сторону Москвы и залезаем на платформу по протоптанной дорожке. С платформы-в обратном порядке.</p>\r\n<p>Если Вы идёте с автобуса, так на платформу попадёте гораздо быстрее, нежели через "официальный" проход.</p>', NULL, NULL, 1, '2018-01-11 15:17:39', 60001),
(66, 1459, 1, 0, NULL, NULL, '1111111', 'Можно выйти если пройти в сторону МКАДа.', NULL, NULL, 1, '2017-09-07 13:41:59', 60016),
(67, 1470, 1, 0, NULL, NULL, '1111111', '<p>Есть способ обойти павильон через парк, нужно дойти до теннисного корта и выйти на жд пути,там легко можно догадаться куда идти и дойти до платформы и залезть на нее. Также можно обойти со стороны бывшего рынка (с правой стороны, если смотреть на кассы, где табло с временем).</p>\r\n<p>Чтоб попасть на платформу №1, нужно зайти под мост (с левой стороны, если смотреть на кассы, где табло с временем), там огромная дырка под забором или же можно пройти чуть дальше и не применять никаких усилий и просто выйти к жд, или же воспользоваться обходингом через парк/рынок.  </p>', NULL, NULL, 1, '2018-01-14 15:07:50', 60302),
(68, 1471, 1, 0, NULL, NULL, '1111111', '<p>На платформу в сторону Ленинградского вокзала, можно залезть со стороны торца на "Область", путём прохода от кассы или подземного перехода, прямо по тропинке вдоль платформы. Проход за забор к рельсам возможен с московского торца областной платформы (между забором и платформой достаточно широкая дырень (при оценке метров с 20 от нее).</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60317),
(69, 1472, 2, 0, NULL, NULL, '1111111', '<p>Турникеты действуют только в направлении на Москву. Что интересно, высокий анти-зайцевый забор тут 2х-контурный - один непосредственно вокруг платформы, второй метрах в 10 от неё. Под платформами приварены решетки.</p>\r\n<p>На отурникеченной платформе для перелаза нужно по асфальтированной дорожке подойти к левому спуску с пешеходного моста (он находится вне отурникеченной зоны, домик с турникетами и кассой находится у правого спуска), подняться на несколько ступенек - и от платформы вас отделяют лишь перила моста. Осталось только перелезть через них и спрыгнуть к электрону на Москву.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60321),
(70, 1473, 2, 0, '00:00:00', '23:59:59', '1111111', '<p>В сторону "Области", платформы №2, турникетный павильон Закрыт, турникетных линеек вообще нет, проход свободный, можно выйти в город даже с любой части платформы.</p>\r\n<p>В сторону Ленинградского вокзала, платформы №1, работают турникеты. Обход путём спрыгивания с платформы и прохода через платформу №2, что идёт в сторону "Области".</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60336),
(71, 1474, 1, 0, NULL, NULL, '1111111', '<p>На платформе действует перронный контроль</p>\r\n<p>С пятницы, 15 марта 2019 года, проход к пригородным поездам и выход в город на станции Сходня будет осуществляться через турникеты. </p>', NULL, 0, 1, '2019-03-10 11:02:39', 60406),
(72, 1475, 1, 0, NULL, NULL, '1111111', '<p>Забраться на платформу легко через торцы, однако торец со стороны переезда закрыт забором. Для хардкорных электричкеров есть вариант с андерплатформ-лазингом в любом удобном месте, либо забор-лазингом на выходе из подземного перехода. В середине февраля 2016 года из-за гибели двух человек на переезде, переезд перекрыли стандартным легкоперелезаемым ОЖДшным забором.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60410),
(73, 1476, NULL, 0, '06:40:00', '19:15:00', '1111111', NULL, NULL, 0, 1, '2019-03-26 19:52:09', 60425),
(74, 1477, 2, 0, NULL, NULL, '1111111', '<p>В сторону "На Москву" со стороны Нового города работают турникеты</p>\r\n<p>Перронный контроль со стороны старого города.</p>', NULL, 0, 1, '2019-03-06 06:46:09', 60500),
(75, 1479, NULL, 0, '00:00:00', '02:00:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60618),
(78, 1479, NULL, 0, '13:30:00', '16:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60618),
(79, 1479, NULL, 0, '17:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60618),
(82, 1479, NULL, 0, '04:00:00', '12:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60618),
(83, 1481, 1, 0, NULL, NULL, '1111111', '<p>Обход везде. В заборе выпилены прутья у лестниц и в мск и в область. Но проще и быстрей с торцов залезть.</p>', NULL, 0, 1, '2019-03-06 06:48:25', 60637),
(85, 1483, 1, 0, NULL, NULL, '1111111', '<p>Спрыгиваем с московского торца на настил и идём в нужную сторону.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60707),
(86, 1485, 1, 0, NULL, NULL, '1111111', 'Спрыгнуть с платформы и идти в сторону Москвы', NULL, NULL, 1, '2017-09-07 13:41:59', 60800),
(88, 1484, NULL, 0, '05:10:00', '21:50:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60711),
(89, 1486, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60815),
(90, 1487, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60829),
(91, 1488, NULL, 0, '05:20:00', '22:00:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60834),
(92, 1489, NULL, 0, '05:50:00', '17:20:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60849),
(93, 1490, NULL, 0, '06:00:00', '18:40:00', '1111110', NULL, NULL, 0, 1, '2018-05-14 10:50:51', 60853),
(94, 1492, NULL, 0, '08:15:00', '17:45:00', '1111111', '<p>08.15 - 17.15</p>\r\n<p>Перерыв</p>\r\n<p>11.30-12.00</p>\r\n<p>13.30-14.30</p>\r\n<p>Выходной</p>\r\n<p>Среда, Четверг</p>', null, 0, 1, '2018-07-16 07:42:31', 60919),
(95, 1499, 1, 0, NULL, NULL, '1111111', '<p>Проще некуда. Спрыгивайте с любого торца любой платформы. Обратно также.</p>', NULL, 0, 1, '2017-09-21 11:30:15', 61305),
(96, 1501, 1, 0, NULL, NULL, '1111111', '<p>Проще некуда. Спрыгивайте с любого торца любой платформы. Обратно также.</p>', NULL, 0, 1, '2017-09-21 11:29:59', 61409),
(97, 1504, NULL, 0, '05:00:00', '20:00:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 61432),
(98, 1506, 1, 0, NULL, NULL, '1111111', '<p>У московского торца есть лесенка, а напротив дырка и выход к улице железнодорожников. Для того, чтобы попасть в основную часть города - нужно дойти до магазина "69 тупик" и по подземному переходу. Или же дойти до спуска с "московских платформ" на "бологовские" и налево через калитку "служебный проход". Ранним утром, по крайней мере, такой способ выхода работает, причем идут толпы, многократно проверено одним из админов. А вот направо все так, как написано ниже:</p>\r\n<p>Калитки охраняются охранниками и без удостоверения не пускают через станцию.</p>', NULL, 0, 1, '2018-06-07 16:16:59', 61502),
(99, 1493, NULL, 0, '05:20:00', '22:00:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 61108),
(100, 1498, 1, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 61201),
(101, 1496, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-19 09:35:17', 61131),
(102, 1495, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 61127),
(103, 1497, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 61146),
(104, 1494, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 61112),
(105, 1500, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 61310),
(106, 1502, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 61413),
(107, 1503, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 61428),
(108, 1505, NULL, 0, NULL, NULL, '1111111', 'Не функционирует ', NULL, NULL, 1, '2017-09-07 13:41:59', 61447),
(109, 4742, 1, 0, NULL, NULL, '1111111', '<h3 class="wk_header">Для платформ Горьковского направления:</h3>\r\n<div class="wk_header">Следует спрыгнуть с торца платформы, высота примерно 1.30 метра, во всяком случае можно слезть по морде электрички, далее нужно дойти до 10 тупика. Около него имеется дырка в заборе. Для удобства и быстрого прохождения рекомендуется использовать последний вагон из области. </div>\r\n<div class="wk_header"> </div>\r\n<h3 class="wk_header">Для платформ Курского, Рижского и Белорусского направлений:</h3>\r\n<p>Турникеты есть и включены на платформах 2 и 5.</p>\r\n<p><br /><strong>Платформа №2 (в сторону Царицыно):</strong></p>\r\n<p>Приходим на 1 низкую или 3 высокую платформу. Спрыгиваем на пути в сторону последнего вагона, далее обычный залаз на платформу, либо догхэлпинг. Чтобы выйти с платформы, спрыгиваем с 1 вагона и идём либо на 3, либо на 4 платформу, либо сразу к воротам на 1 платформе. <b>Остерегайтесь ментов. Штраф за переход путей 100р.</b> </p>\r\n<div class="wk_sub_header"><strong>Платформа №5 (в сторону Каланчёвской):</strong></div>\r\n<p>Спрыгиваем с последнего вагона из области на служебный проход и переходим на 3 или 4 платформу. Быдло игнорим.<br /><br /></p>', NULL, 95, 1, '2017-09-07 13:41:59', 191602),
(110, 4740, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191509),
(111, 4703, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 190031),
(112, 4702, 1, 0, NULL, NULL, '1111111', '<div class="wk_header">Спрыгиваем из первого вагона из области (или последний в сторону области). Можно пойти направо, подняться на горку и попасть к метро и остановкам НОТ. Можно пойти налево, спрыгнуть и попасть сразу в метро.</div>', NULL, NULL, 1, '2017-09-07 13:41:59', 190027),
(113, 4701, 1, 0, NULL, NULL, '1111111', '<div class="wk_header"><strong>В сторону м. Печатники:</strong></div>\r\n<p>В заборе у гаражного кооператива в сторону Текстильщиков есть дыра, затем можно с легкостью подняться на любую платформу. <br />Идешь в сторону Москвы по левой стороне, метров через 400 можно будет выйти через гаражи или если пройти чуть дальше, ближе к мосту будет поворот налево, а там и проход к дороге. Выход будет в 50ти метрах от м. Печатники.</p>\r\n<div class="wk_sub_header"><strong>На Люблинскую улицу:</strong></div>\r\n<p>Нужно идти в сторону на Москву по правой стороне путей. В конце-концов после забора будет начинаться маленькая лесополоса а затем тропинка, ведущая к дырке в заборе. Недалеко есть остановки автобусов 54, 228, С4, 350, 623, 633, 650 и троллейбуса 50 до различных метро.</p>\r\n<div class="wk_sub_header"><strong>С другой стороны:</strong></div>\r\n<p>Есть вариант выйти на противоположной стороне станции. При выходе нужно идти справа от забора, там будет тропинка. Выход буде около туннеля под Ж/Д. Забор там заканчивается, так что можно без проблем выйти на улицу. Выход на ул. Полбина. Недалеко есть остановка автобусов 30, 646 и маршруток 528, 539.</p>\r\n<p><strong>К МФЦ Люблино:</strong></p>\r\n<p>Близ остановки и МФЦ Люблино можно безпрепятсвенно выйти из Люблино.</p>\r\n<p><b>В любом случае на дорогу уходит минут 10-15 минут.</b></p>\r\n<div class="wk_header"> </div>', NULL, NULL, 1, '2017-09-07 13:41:59', 190012),
(114, 4739, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191458),
(116, 4738, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191443),
(117, 4737, 1, 0, NULL, NULL, '1111111', '<div class="wk_header">Спрыг с последнего вагона из области и вверх направо, забор быстро кончается.</div>\r\n<p><a title="Как обойти турникеты на станции Москворечье" href="images/wayout/Moskvorechye.jpg" target="_blank" rel="noopener noreferrer"><img src="images/wayout/Moskvorechye_small.jpg" alt="Как обойти турникеты на платформе Москворечье" width="480" height="358" /></a></p>', NULL, NULL, 1, '2017-09-07 13:41:59', 191439),
(118, 4736, 1, 0, NULL, NULL, '1111111', '<div class="wk_header">На станции хорошо работает паровозик. Также забор в ряде мест легко <span style="text-decoration: line-through;">перелазится</span>. Забор обновлён на более высокий. </div>\r\n<div class="wk_header"> </div>\r\n<div class="wk_sub_header"><strong>Калитка:</strong></div>\r\n<p>Идём по правой стороне радио-рынка, далее вдоль бетонного забора, забор кончается, направо через пути, видим калитку (в 99% открыта), проходим через нее и выходим на платформу. <br /><br />Под пешеходным мостом есть <span style="text-decoration: line-through;">дыра в заборе</span>(часто латается) со стороны пл. на Москву. Также несложно перелезть через перила моста на стороне пл. в область.</p>\r\n<p>Если пройти от моста в сторону метро, то есть также ворота, которые либо закрыты на цепочку без замка, либо просто открыты настежь.</p>\r\n<p> </p>\r\n<p>В сторону Москвы в районе пересечения путей с Луганской улицей забор кончается.</p>', NULL, 0, 1, '2018-08-29 10:29:51', 191424),
(119, 4735, 1, 0, NULL, NULL, '1111111', '<p class="box_body">Спрыгиваем в сторону области и спокойно выходим. Кликабельная пикча:</p>\r\n<p class="box_body"><a title="Как обойти турникеты на Покровской" href="images/wayout/Pokrovskaya.jpg"><img src="http://elektrichking.ru/images/wayout/Pokrovskaya_small.jpg" alt="Как обойти турникеты на Покровской" width="480" height="270" /></a></p>\r\n<p class="box_controls_wrap"> Чтобы попасть на платформу, используем догхэлпинг.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 191419),
(121, 4733, NULL, 0, '06:50:00', '18:50:00', '1111111', NULL, NULL, NULL, 1, '2017-09-12 20:02:52', 191212),
(122, 4732, 1, 0, NULL, NULL, '1111111', '<p>Основной залаз - через большую дырку в заборе с восточной стороны. Также на пути можно спуститься с лестницы, что ведёт к турникетам московской платформы.</p>', NULL, 0, 1, '2017-11-02 07:32:12', 191208),
(123, 4730, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191104),
(124, 4729, 1, 0, NULL, NULL, '1111111', '<p>Хорошо работает паровозик. <span style="text-decoration: line-through;">Также забор очень удобен для того, чтобы его перелезать.</span> В скором времени станция будет оснащена нанозабором<span style="text-decoration: line-through;"><br /></span></p>\r\n<p>В сторону мск в 50 метрах находится легальный переход.</p>\r\n<p>В сторону Серпухова почти всегда есть дыра в заборе, но периодами её заваривают.</p>\r\n<p> </p>', NULL, 0, 1, '2018-12-19 09:39:13', 191000),
(125, 4728, 1, 0, NULL, NULL, '1111111', '<p><span style="color: #ff6600;">На платформе в область на торце последнего вагона покрасили забор! Будьте акуратнее при залазе!</span></p>\r\n<p>Вариантов много, большинство указано на схеме. Обходинг: перелезть через забор, но это требует физических навыков у электричкера. Как вариант - паравозинг. К счастью, быдланы немногочисленные и зачастую пофигистичные.</p>\r\n<p>На станции Подольск, если проходить через турникеты дальше от будки с надсмотрщиками, то можно пройти вовсе незамеченным, т.к. весь народ прет рядом с ними и, соответственно, чоповец переключает всё внимание сюда, а там хоть трава не расти (это турникеты в начале платформы в область), а в хвосте платформы второй турникет от окна можно вообще без препятствий пройти, стоит только боком повернуться, там и охранник и тетка на это редко когда реагируют.</p>\r\n<p>Схема обходинга к автовокзалу:</p>\r\n<div class="wk_header"><a title="Как обойти турникеты в Подольске" href="images/wayout/Podolsk-scheme.jpg"><img src="images/wayout/Podolsk-scheme_small.jpg" alt="Как обойти турникеты в Подольске" width="585" height="480" /></a></div>\r\n<div class="wk_header">Сами ворота:</div>\r\n<div class="wk_header"><a title="Как обойти турникеты в Подольске" href="images/wayout/Podolsk-1.jpg"><img src="images/wayout/Podolsk-1_small.jpg" alt="Как обойти турникеты в Подольске" width="480" height="640" /></a></div>', NULL, 182, 1, '2017-11-02 19:17:47', 190900),
(128, 4725, 1, 0, NULL, NULL, '1111111', '<div class="box_body">\r\n<div class="wk_text">На южном торце легальный переход по настилу демонтирован, так как имеется подземный переход. Для выхода нужно прыгать с платформы (высота 1 м). Если пойти направо к улице Железнодорожной, у выхода из подземного будет достаточно большая дыра под забором, далее в 100 метрах будет дыра прямо в заборе (наиболее удобный выход), вообще не латается, еще через 200 метров забор закончится. Если пойти налево к улице Товарной, сразу после платформы будут ворота, в 99% случаев открыты.\r\n<ul>\r\n<li class="im-mess im_in _im_mess _im_mess_5102" data-ts="1549538270" data-msgid="5102" data-peer="295338417">\r\n<div class="im-mess--actions"> </div>\r\n<div class="im-mess--text wall_module _im_log_body">Также на северном торце обеих платформ (у моста) турникеты хорошо проходятся паровозиком. Быдлан или бабка могут сидеть в будке и лениво поглядывать в их сторону. В подземном переходе обычно 2 быдлана, агрессивные, пройти вдвоем не дают.</div>\r\n</li>\r\n<li class="im-mess im_in _im_mess _im_mess_5103" data-ts="1549538558" data-msgid="5103" data-peer="295338417">\r\n<div class="im-mess--actions"> </div>\r\n<div class="im-mess--text wall_module _im_log_body">На всех торцах платформ треугольники, на серпуховской (1 путь) около южного торца сбоку есть деревянная ступенька. А вообще платформы не очень высокие, зимой залезть еще легче (появляется ледяная ступенька с южного торца), на самый крайний случай дог-хелпинг.</div>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>', null, 0, 1, '2019-03-01 13:17:38', 190807),
(130, 4720, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 190614),
(131, 4719, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 190609),
(132, 4718, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 190525),
(133, 4717, NULL, 0, '06:00:00', '17:59:59', '1111111', NULL, null, 0, 1, '2018-04-02 21:16:09', 190510),
(134, 4716, 1, 0, NULL, NULL, '1111111', '<div class="box_body">\r\n<div class="wk_text">Для выхода на привокзальную площадь нужно спрыгнуть с серпуховского торца платформы и перейти по настилу.</div>\r\n<div class="wk_text"><br />Также имеется в наличии дыра в заборе, которым перегорожен проход к новым домам с северного торца платформы.</div>\r\n<div class="wk_text"><br />Отсутствует часть забора по правую сторону если смотреть в Москву. Находится напротив таблички "Чехов", которая висит рядом со входом в подземный переход.</div>\r\n</div>', NULL, NULL, 1, '2017-09-07 13:41:59', 190506),
(135, 4715, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 190417),
(136, 4714, NULL, 0, '06:00:00', '18:00:00', '1111111', '<p>перерыв 12.40 - 13.40</p>', NULL, 0, 1, '2018-07-17 17:30:53', 190402),
(137, 4710, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 190224),
(138, 4709, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 190213),
(139, 4708, 1, 0, NULL, NULL, '1111111', '<div class="wk_header">С конца августа 2015 вся станция обнесена онанозабором, дырок в нём не имеется. Верный способ выскочить - паровозик. Охране на него по фигу. Абсолютно.</div>\r\n<div class="wk_header"> </div>\r\n<div class="wk_header">Часто открыта калитка на низкой платформе, но иногда рядом с ней дежурят менты, чтобы принять за переход путей в неположенном месте.</div>\r\n<div class="wk_header"> </div>\r\n<div class="wk_header">Также открыта калитка в ста метрах в сторону города Тула, напротив магазина Пятёрочка.</div>', NULL, NULL, 1, '2017-09-07 13:41:59', 190205),
(140, 4707, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 190101),
(141, 5375, NULL, 0, '04:00:00', '23:00:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210907),
(142, 5373, NULL, 0, '05:00:00', '23:00:00', '1111111', NULL, NULL, 0, 1, '2017-09-20 12:02:10', 210790),
(143, 5372, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-20 12:01:38', 210729),
(144, 5370, NULL, 0, '03:00:00', '23:00:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210708),
(145, 5374, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210818),
(146, 5377, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210926),
(147, 5376, NULL, 0, '05:00:00', '23:00:00', '1111111', NULL, NULL, 0, 1, '2017-09-20 12:02:35', 210911),
(148, 5371, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210714),
(149, 5369, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210625),
(150, 5368, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210610),
(151, 5367, NULL, 0, '03:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210606),
(152, 5366, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210517),
(153, 5365, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-20 12:01:18', 210502),
(154, 5361, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 210216),
(155, 5360, NULL, 0, '00:00:00', '23:59:59', '1111111', '<p>Иногда на станции имеется перронный контроль.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 210201),
(156, 4828, 1, 0, NULL, NULL, '1111111', '<p>Турникеты - новые высокие, у турникетов в часы пик обычно 2-3 охранника, поэтому перепрыгнуть и не оказаться остановленным нелегко, в другое время они стоят по одному.</p>\r\n<p>Обход турникетов довольно долгий. Осуществляется через платформы ПДС, занимает порядка 10 минут. Однако можно спрыгнуть с платформы за кассой на выход, залезть на платформу "спутников", спрыгнуть с неё и залезть на ПДСную платформу, где турникетов уже нет :) Помешать этому варианту могут ПДСы и охранники (одного охранника достаточно, чтобы заблокировать проход), а помочь - открытые двери в заборах (вероятность, что одна из них открыта - 40%). Можно также перелезть через ворота, что находятся около турникетов (кажется, никем не практикуется, слишком близко к турникетам).</p>\r\n<p>Ещё существует интересный вариант: перелезть через один забор между турникетным павильоном и магазином, а под вторым подлезть (по чьему-то недосмотру там в двух местах под заборами ближе к путям достаточно места для пролезания, а на заборах напротив этих наверху не колья, а закруглённые навершия), как ни странно, особо это ни кем не палится. Также очень удобно (хотя временами стоят менты) лазить через ворота возле 17-го пути (бывают немного обсолидолены) и оттуда проникнуть на платформу (если на пути стоит собака, можно лезть прямо по ней, если нет - по тупику).</p>\r\n<p>И последний вариант: обход через платформу за 17-м путём, тут возможны разные подварианты: спрыгнуть с парапета (естественно, действует только на выход), а также иногда бывают открыты ворота и калитка рядом со зданием вокзала.  <br /><br />При обходинге в сторону Новорязанской улицы (по правую руку, если смотреть от тупиков вокзала) в заборе дыра. </p>', NULL, 0, 1, '2018-02-20 14:53:29', 194013),
(157, 4829, 7, 0, NULL, NULL, '1111111', '<p>Выходите из метро, перед мостом под станцией поворачиваете налево, и через 50м можно залезть на неиспользуемую 2-ую платформу по дыркам в столбе электрификации. Затем спрыгиваете со 2-ой платформы и по путям переходите на действующую 1-ую платформу. <br /><br /></p>', NULL, 0, 1, '2018-02-20 18:15:05', 194028),
(158, 4824, 1, 0, NULL, NULL, '1111111', '<p>Существуют несколько вариантов обходинга. Можно пройти в сторону вокзала и за мостом перелезть через забор; дырка слева перед мостом заделана, и на заборе там висит колючка. (Впрочем, дырку время от времени восстанавливают, т. к. она расположена исключительно удобно). При отсутствии колючки там можно легко перелезть.</p>\r\n<p>Также за мостом, со стороны трамвайной конечной, всегда можно найти лазейки (правда, время обхода может увеличиваться почти неограниченно), а ещё можно залезть на пешеходный мост (у конца платформы, ближайшего к области) или по другую сторону от железки перелезть через забор.</p>\r\n<p>Будьте осторожны, залезая на островную платформу возле 3-го пути (где спутники и ПДСы), говорят, там часто сбивают людей, а также по вечерам встречаются быдланы. </p>', NULL, 0, 1, '2018-02-20 18:18:37', 193913),
(159, 4814, 1, 0, NULL, NULL, '1111111', '<p>Просто спрыгиваете или залезаете на торцы платформы, в сторону Москвы там заборов никаких нету, в сторону области - забор с дырками (находится над путепроводом), можно обойти, если дырки сейчас заварены, можно перелезть (касается в основном тех, кто переходит на ст. Чухлинка Горьковского направления, остальным проще с торца в сторону Москвы спрыгивать и спокойно выходить.</p>\r\n<p>Можно пройти и через турникеты паровозиком, стоит как правило всего один охранник.</p>', NULL, 0, 1, '2018-02-20 18:20:17', 193805),
(160, 4815, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 193810),
(161, 4816, 1, 0, NULL, NULL, '1111111', '<p>С платформы на Москву можно без труда перелезть через забор, также есть перелаз около входа в подземный переход.</p>\r\n<p>Пройти за кем-то легко, на турникетах только по 1 охраннику, да и то не всегда. Но здесь есть небольшой минус - вечером от Москвы поток пассажиров небольшой, можно долго ждать человека с билетом, чтобы за ним пройти.</p>\r\n<p>Обход турникетов: подходя к подземному переходу со стороны метро, поворачивайте налево и идёте вдоль забора 50м. Возле стоянки автобусов забор заканчивается, заворачиваете и по путям возвращаетесь на платформу.  </p>', NULL, 0, 1, '2018-02-20 18:21:16', 193824),
(162, 4830, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 195032),
(163, 4825, 1, 0, NULL, NULL, '1111111', '<p>Платформа 1, конец в сторону области. Там лестница, через перила и вы на свободе. Также пока ещё можно спрыгнуть с московского торца и по тропинке, пока забор до МЦК не продлили.</p>', NULL, 0, 1, '2018-02-21 16:29:31', 193928),
(164, 4817, 1, 0, NULL, NULL, '1111111', '<p>Пожалуй, самая затурникеченная станция в России. Единственная более-менее возможность обойти - из метро идёте по подземному переходу к третьей платформе, идёте к забору между двух выходов из перехода у турникетного павильона, ближе к выходу с перехода, что подальше от турникетного павильона забор чист от колючей проволоки на данный момент, там и перелезаете. При приезде в Москву из области на 1-ую платформу можно спрыгнуть возле последнего вагона, пройти по путям в сторону области и перелезть через забор к метро, но это небезопасно и лезть придётся примерно 3м.</p>\r\n<p>Так же, в связи с последними изменениями стал доступен еще один способ. Под спутник теперь отдельный турникетный проход, на котором как правило стоит всего 1 охранник.</p>\r\n<p><strong>Самый удобный вариант - паровозик!</strong></p>', NULL, 0, 1, '2018-02-20 18:22:28', 193839),
(165, 4818, 1, 0, NULL, NULL, '1111111', '<p>У края платформы ближе к Москве забор отсутствует, спрыгиваете с платформы и идёте к Лермонтовскому проспекту. Влезть на мост крайне легко. </p>\r\n<p>Ещё в середине платформы "На Москву" из-за сварки забора есть своеобразные "ступеньки".</p>', NULL, 0, 1, '2018-02-20 18:23:09', 193843),
(166, 4819, 1, 0, NULL, NULL, '1111111', '<p>С Московского торца сразу за платформой "на Москву" есть полулегальный переход через пути.</p>', NULL, 0, 1, '2018-02-20 18:23:17', 193858),
(167, 4833, 1, 0, NULL, NULL, '1111111', '<p>Спрыгнуть сплатформы и перейти пути налево (от москвы если ехать), скоро забор заканчивается, перелезть через небольшое заборчик, и пройти в сторону рынка. Там выйти через калитку, вроде всегда открыта. ВНИМАНИЕ! Время от времени у конца забора с невидимой стороны тусуются менты и ловят за переход жд-путей! </p>\r\n<p>Ещё есть какая-то домофонная дверь (на другой стороне железной дороги), не знаю, позвоните, может откроют. Можно также пройти через турникеты (1 охраник и бабушка у калитки, но далеко не всегда). Переход с платформы на платформу вообще свободный (что радует, т. к. станция узловая и нередко приходится пересаживаться с одной ветки на другую), кроме спутниковой платформы - там дополнительная линия турникетов.</p>\r\n<p>Хорошее место для обхода - со стороны Москвы с севера, прямо к рыночку, через него на Инициативную улицу. Препятствие - заборчик, который очень легко перелезть.</p>', NULL, 0, 1, '2018-02-20 18:23:53', 194206),
(168, 1491, 1, 0, NULL, NULL, '1111111', '<p><strong>Вариант 1</strong></p>\r\n<p>Существует путем возвращения со станции в город и лонгволкинга в сторону автомобильного моста через жд. Проходим под мост и идем к торцам платформ (не огорожены, солидолом мажутся крайне редко-но проверять надо). Далее платформлазинг, а если в тупике стоит собака - еще и догхелпинг. БыдлоЧОПа нет вообще (стоят рядом с перронным контролем).</p>\r\n<p><strong>Вариант 2</strong></p>\r\n<p>Можно пройти в сторону вокзала до конца, а там пройти по настилам через товарную станцию (редко бывает ЛОВД в том месте).</p>\r\n<p><strong>Вариант 3</strong></p>\r\n<p>Можно пройти так же через ворота, они обычно открыты, если нет то можно воспользоваться дыркой в заборе около парковки(дырка левее если смотреть на ворота, там есть тропинка к ней).</p>\r\n<p><strong>Вариант 4</strong></p>\r\n<p>Можно перейти по пешеходному мосту до конца(ул.трудовая) и зайти там.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 60904),
(169, 1480, NULL, 0, '07:00:00', '19:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60622),
(170, 4983, 1, 0, NULL, NULL, '1111111', '<div class="wk_sub_header"><strong>Калитка</strong></div>\r\n<div class="wk_sub_header">Спрыгиваем с платформ в сторону Беговой, проходим 150 метров, держась забора справа. В нем будет калитка. Очень редко бывает закрыта.<br />P.S. В последнее время закрыта.</div>\r\n<div class="wk_sub_header"> </div>\r\n<div class="wk_sub_header"><strong>Аэроэкспресс</strong></div>\r\n<div class="wk_sub_header">Дожидаемся прихода аэроэкспресса, ворота открываются, выходим. С недавних пор пассажиров аэроэкспресса выпускают через калитку рядом с метро Белорусская.</div>\r\n<div class="wk_sub_header"> </div>\r\n<div class="wk_sub_header"><strong>4 платформа 6 путь</strong></div>\r\n<div class="wk_sub_header"><strong><em>Способ подходит только если нужно попасть на отурникеченную платформу, а не в обратную сторону. </em></strong><br />Если на этой платформе стоит электричка, используем догхэлпинг. Доходим до турникетного павильона, спрыгиваем на пути. Подходим к электричке и по поручням забираемся на платформу. Не заденьте концевой кран! <br /><br /><strong>Забор у перехода<br /></strong>Рядом с 6 платформой 1 путь есть переход. Рядом с ним на заборе отсутствуют пики. Удобно перелезать. </div>\r\n<div class="wk_sub_header"> </div>\r\n<div class="wk_sub_header"> </div>\r\n<div class="wk_sub_header"><img src="images/wayout%2FBelorusskiy.jpg" alt="" width="1003" height="640" /></div>', NULL, 0, 1, '2018-06-05 21:58:52', 198230),
(171, 4981, 1, 0, NULL, NULL, '1111111', '<p>Обход со стороны Московского торца. Спрыгнуть и держаться левее, пока не закончится забор.<br />С областного надо идти, держаться левее и завернуть за бетонный забор.</p>\r\n<p>Оба способа работают как в одну, так и в другую сторону.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 198211),
(172, 4982, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 198226),
(173, 4469, 1, 0, NULL, NULL, '1111111', '<p>Спрыгиваете с любой платформы в сторону Мск и доходите до отмеченного здания. Там калитка. Если калитка закрыта, что бывает только рано утром, то переходите через пути на противоположную сторону.</p>\r\n<p> <a title="Как обойти турникеты на станции Фили" href="images/wayout/Fili.jpg" target="_blank" rel="noopener noreferrer"><img src="images/wayout/Fili_small.jpg" alt="Как обойти турникеты на станции Фили" width="480" height="640" /></a></p>\r\n<p><strong>Вариант, актуальный всегда</strong></p>\r\n<p>Спрыгиваете с любой платформы в сторону области, поворачиваете направо и идёте по подъездным путям до метро.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 181600),
(174, 4470, 1, 0, NULL, NULL, '1111111', '<div class="wk_header"><strong>Торцы в сторону области</strong></div>\r\n<p>Спрыгиваем с любой платформы в сторону области. Если спрыгнули с платформы на Москву, переходим мост по путям до начала платформы в область. Видим слева калитку, если открыта - выходим через калитку и идём/едем к метро/куда_надо. Если нет - переходим пути и выходим на улицу Ивана Франко.</p>\r\n<div class="wk_sub_header"><strong>В сторону Москвы</strong></div>\r\n<p>Спрыгиваем с любой платформы в сторону Москвы. По левой стороне забор быстро кончится и выйдите к бизнес-центру.</p>\r\n<div class="wk_header"><strong>Пешеходный мост</strong></div>\r\n<p>На Кунцево есть пешеходный мост, часть которого перестала функционировать после установки турникетов. Части разделены забором, в котором иногда бывает дырка.</p>\r\n<div class="wk_sub_header">1. Можно пролезть, если есть актуальная дырка.</div>\r\n<div class="wk_sub_header">2. Сам мост нам не нужен. Смотрим, куда спускается недействующая лестница. Видим, что она спускается к бизнес-центру. У самого спуска отколота верхняя часть забора. Её периодически заделывают, но довольно редко, ибо всё равно те, кому надо, выйдут. Спрыгиваем на пути, переходим их. Перелезаем забор и оказываемся у бизнес-центра. Далее кому куда надо. Затруднено, если на путях стоят поезда.</div>\r\n<div class="wk_sub_header"> </div>\r\n<div class="wk_header"><strong>Забор</strong></div>\r\n<p>Забор в Кунцево на платформе на Москву - один из немногих кошерных заборов, оставшихся таковым с момента начала повальной дурнекитизации железной дороги. Поясню. Забор, к примеру, в Филях или на Каланчевской или Новой, такой, что, перелезая его, можно напороться на пики яйцами. В Кунцево же забор "трубчатый". То есть сетчатый сам забор имеет 3 горизонтальных трубы: внизу, по центру "типа перила" и наверху. Не нужно иметь семь пядей во лбу, чтобы догадаться, как его перелезать - хватаемся за верхнюю трубу, ставим ноги на среднюю, далее перелезаем и прыгаем. </p>', NULL, NULL, 1, '2017-09-07 13:41:59', 181704),
(175, 4471, 1, 0, NULL, NULL, '1111111', '<p>stay tuned</p>\r\n<p><img src="images/404.jpg" alt="404" width="640" height="426" /></p>', NULL, 0, 1, '2018-12-19 09:24:58', 181719);
INSERT INTO `ildjs_rw2_station_tickets` (`id`, `stationID`, `turnstiles`, `tpd`, `time_1`, `time_2`, `timemask`, `detour`, `time_check`, `thanks`, `show_thanks`, `mod_date`, `esr`) VALUES
(176, 4472, 1, 0, NULL, NULL, '1111111', '<p>Станция проста как пять копеек. Спрыгиваем с платформы и обходим заборы. Ну или перелезаем через забор прямо на/с платформы, только осторожно, там может быть колючка.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 181723),
(177, 4477, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 181827),
(178, 4478, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 181831),
(179, 4479, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 181846),
(180, 4480, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 181850),
(181, 4482, NULL, 0, '07:25:00', '19:25:00', '1111111', NULL, NULL, 0, 1, '2018-01-14 13:08:21', 182105),
(182, 4473, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 181738),
(183, 4474, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 181742),
(184, 4475, 1, 0, NULL, NULL, '1111111', '<p>Народ обходит со стороны Одинцово, с московской стороны обходить дольше (хотя, если перелезать на стыках платформы и забора - ближе к магазинам с обеих сторон).</p>', NULL, NULL, 1, '2017-09-18 08:48:30', 181757),
(185, 4483, 1, 0, NULL, NULL, '1111111', '<p>Слезть с платформы и пройти вдоль забора в сторону области. Справа будет дверь, периодически бывает открытой. Если она закрыта, то идём дальше до служебной дырки с левой стороны забора. <br /><br /><strong>Второй по сложности путь.</strong></p>\r\n<p>Прямо за вторым выходом (ближним к Москве) раньше была дыра в заборе, которую периодически заваривали и на следующий день резали снова. Увы, но заведующий штатным болторезом то ли переехал, то ли купил машину, так что сейчас там просто забор с множеством боевых ранений. Однако никто не запрещает его просто перелезть у павильона. <br /><br />С этой же стороны можно спрыгнуть и пройти вдоль забора с южной стороны (там заводы, не перепутаете) - метров через сто начинается отклонение заводской ветки, есть тропинка. </p>', NULL, NULL, 1, '2017-09-07 13:41:59', 182209),
(186, 4484, 1, 0, NULL, NULL, '1111111', '<p>Тут все просто - обойти турникеты легко с обоих торцов, заборы короткие. С московской стороны сразу за окончанием забора даже настил есть.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 182213),
(187, 4485, 1, 0, NULL, NULL, '1111111', '<p>Спрыг с платформы и до конца забора.</p>', NULL, NULL, 1, '2017-09-12 21:32:12', 182228),
(188, 4486, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182232),
(189, 4487, NULL, 0, '00:00:00', '12:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182247),
(190, 4487, NULL, 0, '13:30:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182247),
(191, 4489, NULL, 0, '06:20:00', '12:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182266),
(192, 4489, NULL, 0, '13:30:00', '18:20:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182266),
(193, 4490, NULL, 0, '00:00:00', '12:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182270),
(194, 4490, NULL, 0, '13:30:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182270),
(195, 4491, 1, 0, NULL, NULL, '1111111', '<p>Обход крайне элементарный - с обоих краёв платформы, есть вариант и перелезть через забор возле турникетного павильона (паркур начального уровня). Будьте внимательны, иногда края платформ солидолят. <br /><br />Также почти всегда открыта калитка, расположенная от платформы в область где-то по середине среди товарных поездов (если будут стоять).</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 182302),
(196, 4493, NULL, 0, '06:15:00', '12:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182321),
(197, 4493, NULL, 0, '13:30:00', '18:15:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182321),
(198, 4494, NULL, 0, '06:00:00', '12:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182336),
(199, 4494, NULL, 0, '13:30:00', '18:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182336),
(200, 4495, NULL, 0, '06:15:00', '12:00:00', '1111000', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182340),
(201, 4495, NULL, 0, '14:00:00', '15:15:00', '1111000', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182340),
(202, 4496, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182406),
(203, 4492, NULL, 0, '06:00:00', '12:30:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182317),
(204, 4492, NULL, 0, '13:30:00', '18:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182317),
(205, 4497, NULL, 0, '06:00:00', '12:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182509),
(206, 4497, NULL, 0, '13:30:00', '18:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182509),
(207, 4488, 1, 0, NULL, NULL, '1111111', '<div class="wk_sub_header"><strong>Вход</strong></div>\r\n<p>На платформу можно забраться по торцу рядом с турникетным павильоном или с другого конца платформы. Осторожно, платформа достаточно высока, а зимой торец покрывается льдом!</p>\r\n<div class="wk_sub_header"><strong>Выход</strong></div>\r\n<p>Чтобы выйти можно просто спрыгнуть на пути и дойти 15 метров до переезда, по расстоянию точно так же, как и через турникет. Минус в том, что это несколько опасно падением, особенно зимой, а электрички и ПДСы имеют очень неприятное свойство неожиданно выныривать из-за поворота.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 182251),
(208, 4498, NULL, 0, '06:15:00', '12:00:00', '1111000', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182514),
(209, 4498, NULL, 0, '13:00:00', '15:15:00', '1111000', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182514),
(210, 4499, NULL, 0, '06:15:00', '12:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182529),
(211, 4499, NULL, 0, '13:00:00', '18:15:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182529),
(212, 4500, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182603),
(213, 4501, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182618),
(214, 4502, NULL, 0, '05:30:00', '12:15:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182622),
(215, 4502, NULL, 0, '13:45:00', '17:30:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182622),
(216, 4503, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182637),
(217, 4507, 1, 0, NULL, NULL, '1111111', '<p>Ближе всего обходить с московского торца по тропинке. Можно также перелезть забор в середине платформы.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 182904),
(218, 4508, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182919),
(219, 4509, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182923),
(220, 4510, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183004),
(221, 4511, NULL, 0, '05:30:00', '12:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183019),
(222, 4511, NULL, 0, '13:00:00', '17:30:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183019),
(223, 4512, NULL, 0, '05:30:00', '13:40:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183023),
(224, 4512, NULL, 0, '14:40:00', '17:30:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183023),
(225, 4513, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183112),
(226, 4514, NULL, 0, '05:30:00', '12:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183127),
(227, 4514, NULL, 0, '13:00:00', '17:30:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183127),
(228, 4515, 1, 0, NULL, NULL, '1111111', '<p>Последний вагон из Москвы, поворачиваем голову налево и видим отсутствие секции забора.</p>\r\n<p>Так же на нечётной стороне примерно посередине платформы есть калитка, которая всегда открыта.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 183201),
(229, 4337, NULL, 0, '06:15:00', '11:00:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175807),
(230, 4337, NULL, 0, '12:30:00', '18:15:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175807),
(231, 4336, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175718),
(232, 4335, NULL, 0, '05:30:00', '11:15:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175604),
(233, 4335, NULL, 0, '12:45:00', '17:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175604),
(234, 4332, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175510),
(235, 4334, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175538),
(236, 4333, NULL, 0, '05:30:00', '17:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175525),
(237, 4331, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175421),
(238, 4330, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175417),
(239, 4329, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175402),
(240, 4328, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175313),
(241, 4327, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175309),
(242, 4323, NULL, 0, '05:30:00', '17:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175135),
(243, 4284, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 173918),
(244, 4321, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175116),
(245, 4322, NULL, 0, '05:30:00', '17:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 175120),
(246, 4298, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 174332),
(247, 4297, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 174325),
(248, 4296, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 174310),
(249, 4295, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 174306),
(250, 4803, 1, 0, NULL, NULL, '1111111', '<p>Между пригородными и ПДС платформами есть калитка, примерно за 5 минут до прибытия и в течение 5 минут после прибытия аэроэкспресса её открывают, через неё можно пройти к пригородным платформам.</p>\r\n<p>Также с любой пригородной платформы можно спрыгнуть и перейти на платформы поездов дальнего следования (и в обратную сторону). Но это занимает 10-15 минут и обычно проще дождаться Аэроэкспресса.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 193519),
(251, 4802, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 193504),
(252, 4801, NULL, 0, '06:20:00', '11:11:00', '1111100', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 193424),
(253, 4801, NULL, 0, '13:11:00', '19:20:00', '1111100', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 193424),
(254, 4800, 1, 0, NULL, NULL, '1111111', '<p>Особенностью этой станции является наличие совсем близко от платформы переезда со стороны Москвы. Это значительно упрощает обход турникетных павильонов, ибо не приходится искать никаких дырок в заборах. Плюс расстояние от платформы до переезда очень мало, не говоря уже о том, что легальную "дырку" если и заделают, то очень нескоро. Небольшая проблема в том, что платформа высоковата, девушки вряд ли осилят. </p>\r\n<p>Маршрут прост: выходя из метро, проходим мимо павильона, доходим до переезда, а от него - вдоль путей до платформ. Время такого обхода - менее пяти минут.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 193415),
(255, 4799, 1, 0, NULL, NULL, '1111111', '<p>Выходим из метро на Каширский проезд (конечная остановка 607-ого автобуса), далее идём по нему до переезда немного на север (пересечение улицы и подъездных ж/д путей), потом по этим путям через ворота проходим к ближайшей островной платформе и залезаем на неё. Спрыгиваем с платформы, идем в сторону области, перелазим через забор справа (довольно легко).</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 193400),
(256, 4749, NULL, 0, '05:00:00', '11:00:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191814),
(257, 4749, NULL, 0, '12:00:00', '16:50:00', '1111110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191814),
(258, 4798, 1, 0, NULL, NULL, '1111111', '<p>В заборе к северу от станции (у дома 6 по Булатниковскому проезду) регулярно появляются вырезы. Но так же быстро их заколачивают железками. Уже почти весь забор заколочен, но дырка все равно где-нибудь есть.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 193307),
(259, 4793, 1, 0, NULL, NULL, '1111111', '<p><strong>Выход в Бирюлёво Восточное</strong></p>\r\n<p>Спрыгиваем с платформы возле турникетного павильона (охране всё равно), встаём лицом к области, поворачиваемся налево и идём через пути до края насыпи, примерно по линии торца платформ. Оказавшись над выходом из перехода, принимаем левее, в 10 метрах будет тропинка вниз, в конце которой нас ждёт постоянно открытая калитка.</p>\r\n<p><br /><strong>Выход в Бирюлёво Западное</strong></p>\r\n<p>Также спрыгиваем с платформы возле турникетного павильона, встаём лицом к области, принимаем правую сторону, идём вдоль забора 30м до его конца. Внимание! Данный вариант стоит использовать с осторожностью, т.к. забор заканчивается там, где начинается довольно крутой, хоть и не высокий склон оврага.</p>\r\n<p><strong>Кликабельная пикча</strong></p>\r\n<p><a title="Как обойти турникеты на станции Бирюлёво-пассажирская" href="http://elektrichking.ru/images/wayout/Birulevo-pass.jpg"><img src="images/wayout/Birulevo-pass_small.jpg" alt="Как обойти турникеты на станции Бироюлёво-пассажирская" width="480" height="240" /></a></p>', NULL, NULL, 1, '2017-09-07 13:41:59', 192959),
(260, 5934, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 233311),
(261, 4795, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 193105),
(262, 4757, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 192229),
(263, 5840, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 229710),
(264, 5837, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 229617),
(265, 5834, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 229513),
(266, 5835, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 229528),
(267, 5814, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 228921),
(268, 5813, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 228915),
(269, 5817, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 228953),
(270, 4791, 1, 0, NULL, NULL, '1111111', '<p>Спрыгнуть в сторону Москвы, забор скоро кончится.</p>', NULL, NULL, 1, '2017-09-07 13:41:59', 192933),
(271, 4492, NULL, 0, '08:00:00', '12:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182317),
(272, 4492, NULL, 0, '13:30:00', '20:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182317),
(273, 4497, NULL, 0, '08:00:00', '12:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182509),
(274, 4497, NULL, 0, '13:00:00', '20:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182509),
(275, 4498, NULL, 0, '09:40:00', '13:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182514),
(276, 4498, NULL, 0, '14:00:00', '18:40:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182514),
(277, 4498, NULL, 0, NULL, NULL, '0000110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182514),
(278, 4499, NULL, 0, '07:40:00', '12:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182529),
(279, 4499, NULL, 0, '13:00:00', '19:40:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182529),
(280, 4502, NULL, 0, '07:30:00', '12:15:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182622),
(281, 4502, NULL, 0, '13:45:00', '19:30:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182622),
(282, 4511, NULL, 0, '08:00:00', '14:20:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183019),
(283, 4511, NULL, 0, '15:20:00', '20:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183019),
(284, 4512, NULL, 0, '08:00:00', '13:40:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183023),
(285, 4512, NULL, 0, '14:40:00', '20:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183023),
(286, 4514, NULL, 0, '08:00:00', '15:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183127),
(287, 4514, NULL, 0, '16:00:00', '20:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 183127),
(288, 4495, NULL, 0, '07:30:00', '13:00:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182340),
(289, 4495, NULL, 0, '15:00:00', '16:30:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182340),
(290, 4495, NULL, 0, NULL, NULL, '0000110', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182340),
(291, 4494, NULL, 0, '07:30:00', '12:50:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182336),
(292, 4494, NULL, 0, '14:20:00', '19:30:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182336),
(293, 4493, NULL, 0, '07:30:00', '12:50:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182321),
(294, 4493, NULL, 0, '14:20:00', '19:30:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 182321),
(295, 4801, NULL, 0, '06:20:00', '11:45:00', '0000011', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 193424),
(297, 4801, NULL, 0, '12:15:00', '13:55:00', '0000011', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 193424),
(298, 4801, NULL, 0, '14:25:00', '15:40:00', '0000011', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 193424),
(299, 4801, NULL, 0, '16:40:00', '19:20:00', '0000011', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 193424),
(300, 4783, NULL, 0, '05:30:00', '11:30:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 192732),
(301, 4783, NULL, 0, '12:30:00', '14:45:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 192732),
(302, 4783, NULL, 0, '15:15:00', '16:15:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 192732),
(303, 4783, NULL, 0, '16:45:00', '18:25:00', '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 192732),
(304, 4749, NULL, 0, '07:00:00', '09:30:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191814),
(305, 4749, NULL, 0, '10:30:00', '12:30:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191814),
(306, 4749, NULL, 0, '13:00:00', '16:50:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191814),
(307, 4749, NULL, 0, '17:20:00', '19:55:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 191814),
(308, 1480, NULL, 0, '08:00:00', '19:45:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60622),
(309, 1489, NULL, 0, '07:50:00', '19:20:00', '0000001', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 60849),
(313, 4743, 1, 0, NULL, NULL, '1111111', '<p>Спрыгиваете из последнего вагона со стороны Курского вокзала, держитесь правой стороны. Идёте, переходите два моста, пока не увидите справа дырку в заборе напротив вентиляционной шахты метро. Выходите, обратно тем же путём. Примерное время на обход - от 10 минут.</p>', NULL, NULL, 1, '2017-09-11 11:21:56', 191617),
(314, 4744, 1, 0, NULL, NULL, '1111111', '<p>Переходите по мосту на платформу Рижская Ленинградского направления, идёте по ней, в сторону из Москвы, пока не увидите огромную дыру в заборе.</p>\r\n<p>Кликабельные пикчи:</p>\r\n<p><a title="Как обойти турникеты на Ржевской" href="images/wayout/Rzhevskaya-1.jpg"><img src="images/wayout/Rzhevskaya-1_small.jpg" alt="Как обойти турникеты на Ржевской" width="480" height="360" /></a></p>\r\n<p><a title="Как обойти турникеты на Ржевской" href="images/wayout/Rzhevskaya-2.jpg"><img src="images/wayout/Rzhevskaya-2_small.jpg" alt="Как обойти турникеты на Ржевской" width="480" height="360" /></a></p>\r\n<p>Проходите через эту дырку и оказываетесь возле платформы Ржевская. Залезаете на нужную платформу. В сторону Станколита есть даже удобная лесенка:</p>\r\n<p><a title="Как обойти турникеты на Ржевской" href="images/wayout/Rzhevskaya-3.jpg"><img src="images/wayout/Rzhevskaya-3_small.jpg" alt="Как обойти турникеты на Ржевской" width="480" height="360" /></a></p>', NULL, NULL, 1, '2017-09-11 11:30:25', 191621),
(315, 4746, NULL, 0, '07:30:00', '19:00:00', '1111111', NULL, NULL, NULL, 1, '2017-09-11 11:31:31', 191640),
(316, 4747, NULL, 0, '07:00:00', '21:00:00', '1111111', NULL, NULL, NULL, 1, '2017-09-11 11:32:08', 191655),
(317, 4788, 1, 0, NULL, NULL, '1111111', '<p>Нужно спрыгнуть с платформы, а затем обойти следующими способами: либо идти в сторону Взлётной и пройти через калитку и далее через гаражи (также можно пройти ещё дальше по путям), либо пойти в сторону Ленинской до строения, на стене которого красуется всеми "любимый" логотип "PID" с белой электричкой и обогнуть его (чуть раньше тоже есть калитка). Последний способ займет побольше времени.</p>\r\n<p>Нет одной секции забора под переходным мостом со стороны Промышленной улицы. </p>', NULL, NULL, 1, '2017-09-13 08:46:11', 192906),
(318, 4796, 1, 0, NULL, NULL, '1111111', '<p>Нужно применить дог-хелпинг, платформ-слазинг и недолгий обходинг, идти в сторону пл. Космос.</p>\r\n<p>в аэропорту с электрички действуют: обход, паровозик, билет за 22 с Космоса; с аэроэкспресса можно перелезть к электричкам по пожарным ящикам (но крутится охранник) или дождаться невнимательности охранника и пройти к торцу. <br />Однако, в автомате станции Домодедово платформы Космос нет.</p>', null, 0, 1, '2018-08-28 07:21:43', 193114),
(319, 4780, 1, 0, NULL, NULL, '1111111', '<p>В сторону Москвы нанозабор заканчивается напротив торгового центра "Барыбино", по натоптанной тропе идти недалеко.</p>', NULL, NULL, 1, '2017-09-13 08:23:29', 192709),
(320, 4771, 5, 0, NULL, NULL, '1111111', '<p>Идем от платформ в сторону Москвы по левой стороне от путей, напротив здания ПЧ-32 будет калитка которая перманентно открыта, и после выходим через рынок к вокзалу (но ворота там открыты не всегда, примерно с 7:00 до 20:00), или через ворота у здания ПЧ-32 (возле автозаправки, постоянно открыты).</p>\r\n<p>На восточную часть:</p>\r\n<p>"Если вам нужно на восточную сторону Михнево, то нужно пройти по путям на платформу №3 (осторожно, на путях часто грузовые составы), и с нее подняться на лестнице на пешеходный мост.</p>', NULL, 0, 1, '2018-03-15 12:50:31', 192605),
(322, 4753, 1, 0, NULL, NULL, '1111111', '<p>Первый вагон от Москвы, спрыгиваем, идем в сторону Каширы до моста. Забор кончается минут через 5.</p>', NULL, NULL, 1, '2017-09-11 21:11:32', 192107),
(323, 4792, NULL, 0, '06:00:00', '11:35:00', '1111111', NULL, NULL, NULL, 1, '2017-09-14 14:54:39', 192944),
(324, 4792, NULL, 0, '13:05:00', '18:30:00', '1111100', NULL, NULL, NULL, 1, '2017-09-14 14:54:14', 192944),
(325, 4792, NULL, 0, '12:35:00', '14:45:00', '0000011', NULL, NULL, NULL, 1, '2017-09-14 14:55:09', 192944),
(326, 4792, NULL, 0, '15:15:00', '18:30:00', '0000011', NULL, NULL, NULL, 1, '2017-09-14 14:55:32', 192944),
(327, 4786, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-14 14:56:35', 192821),
(328, 5812, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-14 15:00:06', 228900),
(329, 5839, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-14 15:00:19', 229706),
(330, 6074, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-09-16 08:18:57', 237831),
(332, 6081, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-16 08:22:47', 237933),
(333, 4807, 1, 0, NULL, NULL, '1111111', '<p>Другая лазейка находится в начале моста через шоссе Энтузиастов в 50 метрах справа от турникетов. Ближайшая к метро южная лазейка не очень удобна (прутья измазаны солидолом + там крутой склон и можно зацепиться), зато с северной стороны достаточно перелезть низкий бетонный забор у основания моста. Далее идём к платформам и лезем на торец средней (есть треугольники, забор в этом месте частично измазан солидолом), либо идём вдоль неё к лестнице около 3 пути (будьте осторожны - там кривая и поезда проносятся близко), забираемся вверх и перелезаем через перила лестницы. Чтобы выйти - прыгаем, идём к мосту и перед ним с обоих сторон увидим лазейки. При выходе через северную (левую) лазейку будьте аккуратны, особенно зимой - там крутая горка и можно поскользнуться либо выбежать по инерции прямо на трамвайные пути. </p>\r\n<p>Третья лазейка - рядом с путями курского направления с северной стороны (в одной из секций старого бетонного забора раскрошили верхнюю часть, можно перелезть), далее переходим пути курского направления и залезаем на платформу с западной стороны. <br />Самая дальняя 4 лазейка - в сторону Москвы идёте вдоль пути "от Москвы" и там будет тропа вниз,она проходит под оторванным листом, если ещё немного пройти - выйдете к трамваю.<br />На торцах бывает ЧОП, правда почти неактивный. У турникетов охрана есть, но не много (обычно не более 5), учитывая долгую выдержку турникетов пристроиться более чем реально.</p>', NULL, 95, 1, '2018-02-21 09:35:48', 193735),
(334, 4806, 1, 0, NULL, NULL, '1111111', '<p>Калитка с московского конца новой станции Карачарово. <br />На торце новой платформы оставили деревянную лесенку - даже карабкаться не нужно.</p>\r\n<p><img src="images/wayout/Karacharovo.jpg" alt="" width="835" height="626" /></p>\r\n<p> </p>', NULL, 95, 1, '2018-12-17 11:41:06', 193720),
(336, 4805, 2, 0, NULL, NULL, '1111111', '<p>Рай для электричкера - можно элементарно перелезть забор, можно обойти и залезать с торцов (особенно актуально для тех, кому надо переходить на ст. Перово Казанского/Рязанского направления).</p>\r\n<p>Можно и на турникетах за кем-нибудь пристраиваться, правда, народу через Чухлинку совсем немного ездит.</p>', NULL, 95, 1, '2018-07-08 16:15:57', 193716),
(337, 4804, NULL, 0, '07:00:00', '11:30:00', '1111111', NULL, NULL, 95, 1, '2017-09-16 12:15:10', 193701),
(338, 4804, NULL, 0, '12:50:00', '20:00:00', '1111111', NULL, NULL, 95, 1, '2017-09-16 12:15:29', 193701),
(339, 4808, 1, 0, NULL, NULL, '1111111', '<p>Обхода турникетов есть несколько вариантов:</p>\r\n<ol>\r\n<li>Самый удобный, если вам надо к метро: проходим в дырку в заборе между обычным и "спутниковским" путем, затем спрыгиваем (Осторожно! путь со скоростным движением в кривой. Были случаи смертей) и внимательно смотрим на забор прямо перед собой: дырки там появляются и исчезают очень оперативно. Если дырок нет, забор перелезабелен.</li>\r\n<li>В сторону Кетчерской ул: спрыгиваем с московского торца и идем за платформу от Москвы. Там на стройплощадке есть ворота, они часто открыты. Можно пройти через проходную автостоянки, но отношение тамошних охранников к таким маневрам не изучено (хотя тропинка есть).</li>\r\n<li>Прочие пути: спрыгивать с торца от Москвы, идти вдоль любой стороны до нахождения места инфильтрации. Будьте внимательней при проходе в узком коридоре между двумя заборами стройплощадки: разминуться с электричкой там сложно, хотя и возможно.</li>\r\n<li>Спрыгиваем с торца платформы в сторону области и идём вдоль жд путей на Москву, через 150 - 200 м будет лестница и мы выйдем на Рассветную аллею. </li>\r\n</ol>', NULL, 95, 1, '2017-09-16 12:17:48', 193743),
(340, 5851, 1, 0, NULL, NULL, '1111111', '<p>Лазеек дохренища - можно подняться по лесенке и легко перелезть забор. Есть дырка со стороны Москвы со стороны Комсомольской улицы. Также есть лазейка в заборе у торца 1 вагона в сторону области - пролезаем через дыру, дальше с помощью забора забираемся на край платформы, и дальше либо боком, либо перелазим забор самой платформы. В самих заборах с обоих сторон также есть дырки. В сторону области забор довольно быстро заканчивается, так что нелюбителям лазать через заборы можно вполне обойти. <br /><br />Постоянно открытая калитка в сторону области. Рекомендуется для тех, кто идет в сторону метро Новокосино. Высота платформы примерно 1.50 м. Бывали случаи трамватизма. Сама калитка находится в 50 метрах от платформы в сторону Владимира <br /><br />Справа от первой платформы вместо забора с дырами поставили из профлиста. Но есть лазейка на первой платформе со стороны города. Справа от магазина золотая рыбка у забора нет одной верхней секции, перелаз вполне безопасен. Но не рекомендую его юзать в дождь. Также есть лазейки со стороны Дзержинского если пройти немного в сторону Москвы.</p>', NULL, 95, 1, '2017-09-20 14:35:12', 230101),
(341, 5858, NULL, 0, NULL, NULL, '1111100', NULL, NULL, 95, 1, '2017-09-16 12:20:45', 230205),
(342, 5859, NULL, 0, '05:20:00', '17:20:00', '1111111', NULL, NULL, 95, 1, '2017-09-16 12:22:49', 230214),
(343, 5860, NULL, 0, '00:00:00', '23:59:59', '1111100', NULL, NULL, 95, 1, '2017-09-16 12:25:33', 230309),
(344, 5860, NULL, 0, '06:00:00', '20:00:00', '0000011', NULL, NULL, 95, 1, '2017-09-16 12:26:01', 230309),
(345, 5852, NULL, 0, '06:00:00', '13:30:00', '1111100', NULL, NULL, 95, 1, '2017-10-12 17:25:42', 230116),
(346, 5852, NULL, 0, '06:00:00', '12:00:00', '0000011', NULL, NULL, 95, 1, '2017-09-16 12:29:46', 230116),
(347, 5852, NULL, 0, '13:00:00', '18:00:00', '0000011', NULL, NULL, 95, 1, '2017-10-12 17:25:02', 230116),
(348, 5853, NULL, 0, '06:00:00', '19:30:00', '1111100', NULL, NULL, 95, 1, '2018-03-25 15:44:19', 230120),
(351, 5854, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 95, 1, '2017-09-16 12:34:08', 230135),
(352, 5861, 1, 0, NULL, NULL, '1111111', '<p>Сейчас удобные лазейки в задней части 1 платформы (от Москвы) и за ней были заварены и затянуты колючей проволокой типа "егоза", поэтому обход весьма долог. Но со стороны Владимира проход через автостоянку открыт.</p>\r\n<p>Самый быстрый способ выйти в город минуя турникеты - зайти на пешеходный мост напротив здания вокзала, перейти на противоположную сторону (север) и далее перелезть через перила в нижней части лестницы, после чего держась за них пройти по краю лестницы с внешней стороны. Чтобы попасть на южную сторону города, надо ещё раз пройти по другому пешеходному мосту чуть западнее. Вход на станцию - в обратном порядке. Обойти можно и по путям, но на обход времени уйдёт куда больше (до конца забора в сторону Москвы - полкилометра, до места где можно перелезть бетонный забор сразу в город не попадая на частную территорию складов - порядка 300 метров). </p>\r\n<p>В Железке стоят турникеты нового типа, раздвинуть их уже сложно, пристроиться легче.  У платформы спутников свой турникетный павильон, по утрам там много ЧОПа. Залезть на неё проще всего по мордам стоящих электричек, но по утрам быдло этому активно может препятствовать. Также можно залезть с торца со стороны Владимира.</p>', NULL, 95, 1, '2017-09-16 12:38:49', 230402),
(353, 5862, NULL, 0, '06:00:00', '11:00:00', '1111100', NULL, NULL, 95, 1, '2017-09-16 12:40:01', 230417),
(354, 5862, NULL, 0, '13:00:00', '19:10:00', '1111100', NULL, NULL, 95, 1, '2017-09-16 12:40:22', 230417),
(355, 5862, NULL, 0, '06:00:00', '14:00:00', '0000011', NULL, NULL, 95, 1, '2017-09-16 12:40:47', 230417),
(356, 5862, NULL, 0, '13:00:00', '18:00:00', '0000011', NULL, NULL, 95, 1, '2017-09-16 12:41:09', 230417),
(357, 5863, NULL, 0, '00:00:00', '23:59:59', '1111100', NULL, NULL, 95, 1, '2017-09-16 12:42:41', 230421),
(358, 5863, NULL, 0, '00:00:00', '13:00:00', '0000011', NULL, NULL, 95, 1, '2017-09-16 12:43:09', 230421),
(359, 5863, NULL, 0, '14:00:00', '23:59:59', '0000011', NULL, NULL, 95, 1, '2017-09-16 12:43:25', 230421),
(360, 5864, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 95, 1, '2017-09-16 12:45:04', 230506),
(361, 5865, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 95, 1, '2018-01-09 09:52:01', 230510),
(365, 5866, 1, 0, NULL, NULL, '1111111', '<p>Средняя степень сложности. Турникеты охраняются с двух сторон в часы пик, а обычно стоит одна женщина. Паровозинг прокатывает на "ура".</p>\r\n<p>Так же имеются лазейки в заборе по середине платформы по левую сторону при движении из Москвы. Так же можно пройти ~70 метров в сторону Владимира и наткнуться на дыру в заборе со стороны автовокзала. Слаз не контроллируется, особенно в часы пик, когда идёт целая толпа.</p>\r\n<p>В обычное время, очень редко, на торце стоит одинокая тётенька, которая никак не реагирует на залезающих.</p>', NULL, 95, 1, '2017-09-16 12:55:22', 230600),
(366, 5867, NULL, 0, '06:00:00', '11:10:00', '1111111', NULL, NULL, 95, 1, '2017-09-16 12:58:15', 230614),
(367, 5867, NULL, 0, '12:10:00', '19:00:00', '1111100', NULL, NULL, 95, 1, '2017-09-16 12:57:42', 230614),
(368, 5867, NULL, 0, '12:10:00', '18:00:00', '0000011', NULL, NULL, 95, 1, '2017-09-16 12:58:36', 230614),
(369, 5868, NULL, 0, '00:00:00', '11:20:00', '1111111', NULL, NULL, 95, 1, '2017-09-16 13:00:48', 230703),
(370, 5868, NULL, 0, '12:20:00', '23:59:59', '1111111', NULL, NULL, 95, 1, '2017-09-16 13:01:07', 230703),
(371, 5869, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-16 13:01:18', 230718),
(372, 5870, 1, 0, NULL, NULL, '1111111', '<p>Для опытных электричкеров эта станция не составляет большой проблемы, так как на ней пересаживается на автобусы/маршрутки дофига народа в Ногинск и Электросталь, охрана дежурит там чуть ли не постоянно. Впрочем, график у них какой-то странный, неизвестно есть ли он вообще.</p>\r\n<p>Есть отличная лазейка: под мостом, на северной стороне станции (откуда автобусы ходят до Стали и Ногинска) есть дырка. Пролазим через неё, перелезаем через перила моста - это несложно. Также чуть ли не каждый день появляется дырка в заборе около турникетного павильона (с южной стороны), но так же часто она и заваривается.</p>\r\n<p>Способ для особо ленивых и любящих прогуляться: забор заканчивается на повороте Фрязевского шоссе, спрыгнув с платформы, можно его тупо обойти. Но это занимает дохрена времени.</p>', NULL, 95, 1, '2017-09-16 13:02:44', 230807),
(373, 5873, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-16 13:03:05', 230830),
(374, 5874, NULL, 0, '06:00:00', '19:00:00', '1111100', NULL, NULL, 95, 1, '2017-09-16 13:04:08', 230900),
(375, 5874, NULL, 0, '07:00:00', '19:00:00', '0000011', NULL, NULL, 95, 1, '2017-09-16 13:04:26', 230900),
(376, 5875, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 95, 1, '2017-09-16 13:04:59', 230915),
(377, 5877, 1, 0, NULL, NULL, '1111111', '<p>На турникетах иногда быдлосы и крутятся, но с Захаровского торца платформы (она там одна из-за однопутки) обойти крайне легко. Ахтунг: московский торец платформы бывает обсолидолен!</p>', NULL, 95, 1, '2017-09-16 13:05:54', 231000),
(378, 5878, NULL, 0, '05:00:00', '17:10:00', '1111111', NULL, NULL, 95, 1, '2017-09-16 13:06:28', 231015),
(379, 5871, NULL, 0, '05:40:00', '11:00:00', '1111100', NULL, NULL, 95, 1, '2018-04-25 14:26:41', 230811),
(380, 5872, NULL, 0, '05:00:00', '11:30:00', '1111100', NULL, NULL, 95, 1, '2017-09-16 14:33:31', 230826),
(381, 5872, NULL, 0, '12:50:00', '18:00:00', '1111100', NULL, NULL, 95, 1, '2017-09-16 14:34:13', 230826),
(382, 5872, NULL, 0, '06:00:00', '16:00:00', '0000011', NULL, NULL, 95, 1, '2017-09-16 14:34:50', 230826),
(383, 5872, NULL, 0, '16:30:00', '18:00:00', '0000011', NULL, NULL, 95, 1, '2017-09-16 14:35:09', 230826),
(384, 5879, 1, 0, NULL, NULL, '1111111', '<p>Всегда была и будет лазейка в конце платформы в сторону Петушков. Там в заборе всегда есть разогнутые прутья, можно выйти через какую-то никому не нужную территорию прямо в центр города.</p>\r\n<p>Также есть и способ для ленивых: кому всё равно в ту сторону, может прогуляться до переезда по железнодорожным путям, спрыгнув с платформы и направившись в сторону Москвы. Кроме того, на станции гуляют злые менты, особо не шастайте по путям.</p>', NULL, 95, 1, '2017-09-16 14:36:20', 231104),
(385, 5881, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-16 14:36:41', 231123),
(386, 5882, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-16 14:36:52', 231138),
(387, 5883, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-16 14:37:04', 231142),
(388, 5884, NULL, 0, '05:00:00', '09:30:00', '1111100', NULL, NULL, 95, 1, '2017-09-16 14:37:47', 231157),
(389, 5884, NULL, 0, '11:30:00', '18:00:00', '1111100', NULL, NULL, 95, 1, '2017-09-16 14:38:06', 231157),
(390, 5884, NULL, 0, '05:00:00', '09:30:00', '0000010', NULL, NULL, 95, 1, '2017-09-16 14:38:49', 231157),
(391, 5884, NULL, 0, '10:30:00', '11:00:00', '0000010', NULL, NULL, 95, 1, '2017-09-16 14:39:12', 231157),
(392, 5884, NULL, 0, '12:00:00', '18:00:00', '0000010', NULL, NULL, 95, 1, '2017-09-16 14:39:31', 231157),
(393, 5884, NULL, 0, '07:35:00', '11:00:00', '0000001', NULL, NULL, 95, 1, '2017-09-16 14:39:56', 231157),
(394, 5884, NULL, 0, '12:00:00', '19:35:00', '0000001', NULL, NULL, 95, 1, '2017-09-16 14:40:13', 231157),
(395, 5880, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 07:59:32', 231119),
(396, 5887, NULL, 0, '05:00:00', '14:40:00', '1111111', NULL, NULL, 95, 1, '2017-09-18 08:01:39', 231231),
(397, 5887, NULL, 0, '15:10:00', '17:00:00', '1111111', NULL, NULL, 95, 1, '2017-09-18 08:02:06', 231231),
(398, 5885, NULL, 0, '06:00:00', '12:00:00', '1111111', NULL, NULL, 95, 1, '2017-09-18 08:03:56', 231212),
(399, 5885, NULL, 0, '12:45:00', '18:15:00', '1111111', NULL, NULL, 95, 1, '2017-09-18 08:04:20', 231212),
(400, 5886, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:04:33', 231227),
(401, 5841, 5, 0, NULL, NULL, '1111111', '<p>Можно спрыгнуть с торца платформы (в сторону Владимира) и перелезть низенькие перила у начала лестницы, ведущей на кольцевое направление (3-я платформа). Так же можно спрыгнуть с московского торца платформы, около платформы на Москву есть дырка - если влезаете, то вперёд, если нет - то идёте в сторону Москвы до двери в заборе рядом со зданием.</p>\r\n<p>Можно перелезть через забор недалеко от касс на выход (2-ая платформа, от Москвы), в районе 7-ого - 8-ого вагонов (в сторону Москвы, 1-ая платформа) имеется выход в город - через забор (подсказка - лестница перехода). Для экстремалов - в конце платформы "на Москву", залезаете возле плаката на ограждение, смотрите в сторону торгового комплекса Мигеко, внизу будет какой-то склад и забор - идёте по нему, а в конце спрыгиваете.</p>', NULL, 78, 1, '2017-09-18 10:04:23', 230008),
(402, 5842, 1, 0, NULL, NULL, '1111111', '<p>Торец на Москву, с правой стороны в заборе дырка.</p>', NULL, 95, 1, '2017-09-18 18:23:20', 230012),
(403, 5843, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:17:04', 230027),
(404, 5888, NULL, 0, '06:30:00', '10:00:00', '1111100', NULL, NULL, 95, 1, '2017-09-18 08:17:54', 231405),
(405, 5888, NULL, 0, '11:00:00', '19:30:00', '1111100', NULL, NULL, 95, 1, '2017-09-18 08:18:35', 231405),
(406, 5888, NULL, 0, '07:30:00', '19:30:00', '0000011', NULL, NULL, 95, 1, '2017-09-18 08:19:12', 231405),
(407, 5889, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:19:49', 231410),
(408, 5890, NULL, 0, '06:10:00', '14:10:00', '1111100', NULL, NULL, 95, 1, '2017-09-18 08:21:38', 231509),
(409, 5890, NULL, 0, '14:40:00', '19:30:00', '1111111', NULL, NULL, 95, 1, '2017-09-18 08:23:27', 231509),
(410, 5890, NULL, 0, '07:30:00', '11:20:00', '0000011', NULL, NULL, 95, 1, '2017-09-18 08:22:47', 231509),
(411, 5890, NULL, 0, '11:50:00', '14:10:00', '0000011', NULL, NULL, 95, 1, '2017-09-18 08:23:14', 231509),
(412, 5891, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:26:43', 231513),
(413, 5892, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:26:49', 231528),
(414, 5893, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:26:54', 231532),
(415, 6755, 2, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 95, 1, '2017-09-18 18:27:52', 262102),
(416, 6756, NULL, 0, '06:10:00', '19:10:00', '1111111', NULL, NULL, 95, 1, '2017-09-18 08:42:51', 262206),
(417, 6758, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:43:01', 262303),
(418, 6759, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:43:07', 262314),
(419, 6761, NULL, 0, '06:10:00', '19:10:00', '1111111', NULL, NULL, 95, 1, '2017-09-18 08:43:26', 262403),
(420, 6762, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:43:38', 262418),
(421, 6763, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:43:43', 262511),
(422, 6764, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 95, 1, '2017-09-18 08:43:48', 262600),
(423, 6765, 1, 0, NULL, NULL, '1111111', '<p>С третьей платформы идти в сторону Коврова, к зданию поста электрической централизации (высокое оранжевое здание), там через 150 метров будет калитка и выход к остановке троллейбусов 5, 10, 12.</p>\r\n<p>Также прокатывает трюк с тройкой, стрелкой, неработающей социалкой - мол, ваши турникеты не читают столичные карточки, пойдёмте к контролёру, проверим. Поистерив, бабки все-таки открывают калитку в 100% случаев.</p>', NULL, 95, 1, '2017-09-18 08:44:30', 262704),
(424, 4721, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-20 11:37:13', 190629),
(425, 4726, NULL, 0, '00:00:00', '11:15:00', '1111111', NULL, NULL, 0, 1, '2017-09-20 12:26:14', 190811),
(426, 4726, NULL, 0, '12:15:00', '23:59:59', '1111111', NULL, NULL, 150, 1, '2017-09-20 12:27:22', 190811),
(427, 4908, 1, 0, NULL, NULL, '1111111', '<p>Есть два способа попасть на Рижский Вокзал без билета (ровно как и выйти с него):</p>\r\n<ol>\r\n<li>Перелезть через забор слева от турникетного павильона. Забор без колючки, без пик точёных и прочего - будто специально создан для перелезания. Не стоит делать этого, если на тебя смотрят, ибо тогда этот чудо-залаз скоро прикроют.</li>\r\n<li>Обойти через конечную автобусов и троллейбусов у Крестовского моста. Маршрут "на вход": встать лицом к турникетному павильону, обходить вдоль шоссе на север (справа от вас должен вверх уходить мост), в конце дороги слева будет стоянка автобусов, пройти туда и увидите выход на платформу. "На выход": спуститься с бестурникетного конца платформы и выйти через калитку.</li>\r\n</ol>\r\n<p>Кликабельная схема:</p>\r\n<p><a title="Как обойти турникеты на Рижском вокзале" href="images/wayout/Riga.jpg"><img src="images/wayout/Riga-small.jpg" alt="Как обойти турникеты на Рижском вокзале" width="480" height="266" /></a></p>', NULL, 0, 1, '2017-09-20 13:08:19', 196108),
(428, 4909, 1, 0, NULL, NULL, '1111111', '<p>Есть два способа обойти турникеты на Дмитровской:</p>\r\n<p><a title="Как обойти турникеты на Дмитровской" href="http://elektrichking.ru/images/wayout/Dmitrovskaya.jpg"><img src="images/wayout/Dmitrovskaya_small.jpg" alt="Как обойти турникеты на Дмитровской" width="480" height="288" /></a></p>\r\n<ol>\r\n<li>Выходим из западного выхода метро (первый вагон из центра, далее налево и прямо); <br />Проходим зелёный пешеходный тоннель, после него смотрим направо; Забираемся на бетонную "насыпь". Если нужно в область - смотрим направо, находим скобу на заборе, с её помощью забираемся на областную платформу. Если нужно в сторону курка: смотрим прямо, перелезаем метровый забор, <b>смотрим по сторонам на предмет наличия поездов</b>, переходим их, и по бетонному устою вокзальной платформы забираемся на неё.</li>\r\n<li>Выходим из восточного выхода метро (первый вагон из центра, далее направо и ещё раз направо); Идём прямо (в сторону вокзала), доходим до конца нано-забора, обходим, идём порядка 250 метров в обратную сторону; Залезаем на нужную нам платформу. На вокзальную платформу залезть просто - бетонный выступ на метровой высоте, на областную чуть сложнее: <br />Для выхода повтори инструкцию в обратном порядке. смотрим направо, находим скобу на заборе под торцом платформы, с её помощью забираемся на областную платформу. <br /><br /><b>Электричкер, помни! При обходинге вдоль путей всегда будь предельно внимателен! Сними капюшон и наушники, смотри по сторонам и имей ввиду, что поезд может запросто приехать по неправильному пути.</b> </li>\r\n</ol>', NULL, 0, 1, '2017-09-20 13:12:25', 196112),
(429, 4957, NULL, 0, '05:30:00', '18:00:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:15:35', 197331),
(430, 4957, NULL, 0, '05:30:00', '20:30:00', '0000011', NULL, NULL, 0, 1, '2017-09-20 13:16:03', 197331),
(431, 4912, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-20 13:17:11', 196201),
(432, 4913, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-20 13:17:31', 196216),
(433, 4914, 1, 0, NULL, NULL, '1111111', '<p>Со стороны ст.м. Войковская (ближе к Рижскому) пролезаем под забором (или перелезаем его. Учтите, он был обсолидолен), со стороны Сокола (где троллейбус поворачивает) есть большая дырка.</p>\r\n<p>Когда нет дождя или снега, можно залезть на мост возле турникетного павильона. Делать это нужно осторожно - смотри схему 2.</p>\r\n<p>Кликабельные схемы:</p>\r\n<p><a title="Как обойти турникеты на Ленинградской" href="http://elektrichking.ru/images/wayout/Leningradskaya-1.png"><img src="images/wayout/Leningradskaya-1_small.png" alt="Как обойти турникеты на Ленинградской" width="480" height="186" /></a></p>\r\n<p><img title="Схема 2" src="images/wayout/Leningradskaya-2.png" alt="Как обойти турникеты на Ленинградской" width="448" height="254" /></p>', NULL, 0, 1, '2017-09-20 13:23:21', 196220),
(434, 4916, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-20 13:23:41', 196316),
(435, 4917, 1, 0, NULL, NULL, '1111111', '<p>Обходинг довольно простой: слезаем с московского (дальнего от метро) торца платформы. Справа будет забор метров на 300. Рядом с платформой он весь вареный-перевареный, легко перелезабельный, иногда дырявый. Если дырки нет, и перелезть не можете, то обойдите его - он не очень длинный. Как попали за забор, идите обратно вдоль платформы, и уткнетесь во вход в метро. <br /><br />Также в обе стороны забор кончается, да и в нем в сторону МСК достаточно дыр.</p>\r\n<p>Кликабельная схема:</p>\r\n<p><a title="Как обойти турникеты в Тушино" href="http://elektrichking.ru/images/wayout/Tushino.jpg"><img src="images/wayout/Tushino_small.jpg" alt="Как обойти турникеты в Тушино" width="480" height="222" /></a></p>', NULL, 0, 1, '2017-09-20 13:30:52', 196409),
(436, 4918, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-20 13:31:58', 196413),
(437, 4919, 1, 0, NULL, NULL, '1111111', '<div class="wk_sub_sub_header"><strong>Перелазинг</strong></div>\r\n<p>Примерно посередине станции есть забор с множеством горизонтальных прутьев, через которые легко перелезть. Его хорошо видно с платформы, если смотреть на север.</p>\r\n<div class="wk_sub_sub_header"><strong>Обходинг</strong></div>\r\n<p>Если вам нужно на запад, к Железнодорожной улице или улице Чайковского, то можно просто спрыгнуть с платформы и идти на запад около 160м, забор кончится с обеих сторон.</p>\r\n<p>Кликабельная схема:</p>\r\n<p><a title="Как обойти турникеты в Павшино" href="http://elektrichking.ru/images/wayout/Pavshino.jpg"><img src="images/wayout/Pavshino_smalljpg.jpg" alt="Как обойти турникеты в Павшино" width="480" height="204" /></a></p>', NULL, 0, 1, '2017-09-20 13:35:50', 196502),
(438, 4920, 1, 0, NULL, NULL, '1111111', '<p>Так как забор присутствует только на платформе, обойти турникеты проще простого: достаточно спрыгнуть с любого торца и идти в нужном вам направлении. Аналогично из залазом. У московского торца есть наземный переход, так что есть вариант обойти, не нарушая ничего.</p>', NULL, 0, 1, '2017-09-20 13:36:57', 196517),
(439, 4921, 1, 0, NULL, NULL, '1111111', '<p>Обход, по сути, везде, ибо забор есть только на платформе. А у областного торце есть даже наземный переход.</p>', NULL, 0, 1, '2017-09-20 13:37:22', 196521),
(440, 4922, NULL, 0, '06:00:00', '10:55:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:39:56', 196536),
(441, 4922, NULL, 0, '11:35:00', '11:50:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:41:08', 196536),
(442, 4922, NULL, 0, '13:10:00', '14:40:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:41:44', 196536),
(443, 4922, NULL, 0, '14:50:00', '16:00:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:42:04', 196536),
(444, 4923, 1, 0, NULL, NULL, '1111111', '<p>Можно дошагать до переезда, он расположен в 250 метрах от областного конца платформ. Также, если спрыгнуть и идти в сторону Москвы, то забор быстро кончится (метров 100-150).</p>', NULL, 0, 1, '2017-09-20 13:44:02', 196606),
(445, 4924, NULL, 0, '06:00:00', '10:50:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:44:42', 196610),
(446, 4924, NULL, 0, '11:45:00', '11:55:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:45:04', 196610),
(447, 4924, NULL, 0, '13:00:00', '15:00:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:45:29', 196610),
(448, 4924, NULL, 0, '15:10:00', '16:00:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:46:02', 196610),
(449, 4928, 1, 0, NULL, NULL, '1111111', '<p>Можно сделать платформ-джампинг с московского торца и идти к ж/д переезду, но это довольно долго, на глаз метров 200. Проще спрыгнуть с того же торца и пройти через дыру в заборе в сторону города; дыра рядом с торцом.</p>\r\n<p>Можно пройти через калитку, находиться она примерно по центру платформы, рядом с путём, идущим в область. Московский торец платформы оборудована довольно удобной системой залазинга, но дог-хелпинг всё-таки лучше.</p>\r\n<p>Те, кому надо в район Вокзальной улицы, могут спрыгнуть с шаховского торца, пройти немного вперед и повернуть налево, по полузаброшенной ж/д линии на бывший ДХПФ. Там еще непонятно зачем стоит два или три ряда p/dозабора, каждый без одной секции; причем видно, что так было изначально </p>', NULL, 0, 1, '2017-09-20 13:46:53', 196803),
(450, 4930, NULL, 0, '01:00:00', '12:00:00', '1111111', NULL, NULL, 0, 1, '2017-09-20 13:49:13', 196907),
(451, 4930, NULL, 0, '13:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-20 13:49:38', 196907),
(452, 4931, NULL, 0, '06:25:00', '10:50:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:50:24', 196911),
(453, 4931, NULL, 0, '11:20:00', '12:10:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:50:46', 196911),
(454, 4931, NULL, 0, '13:15:00', '16:00:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:51:05', 196911);
INSERT INTO `ildjs_rw2_station_tickets` (`id`, `stationID`, `turnstiles`, `tpd`, `time_1`, `time_2`, `timemask`, `detour`, `time_check`, `thanks`, `show_thanks`, `mod_date`, `esr`) VALUES
(455, 4932, NULL, 0, '06:00:00', '10:25:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:52:29', 197007),
(456, 4932, NULL, 0, '11:25:00', '12:00:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:52:51', 197007),
(457, 4932, NULL, 0, '12:30:00', '18:30:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:53:48', 197007),
(458, 4932, NULL, 0, '07:00:00', '12:00:00', '0000011', NULL, NULL, 0, 1, '2017-09-20 13:54:08', 197007),
(459, 4932, NULL, 0, '13:00:00', '14:40:00', '0000011', NULL, NULL, 0, 1, '2017-09-20 13:54:30', 197007),
(460, 4932, NULL, 0, '15:10:00', '19:50:00', '0000011', NULL, NULL, 0, 1, '2017-09-20 13:54:55', 197007),
(461, 4953, NULL, 0, '06:40:00', '16:00:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 13:56:27', 197238),
(462, 4952, 1, 0, NULL, NULL, '1111111', '<p>Обход со всех сторон. Наиболее удобный - справа от павильона (в сторону Шахи). Торчит мальнький кусок арматуры, который можно юзать как ступеньку. Обычно еще дощечка стоит.</p>\r\n<p>Вообще обход со всех сторон, станция-дырка.</p>', NULL, 0, 1, '2018-02-15 21:41:03', 197223),
(463, 4950, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-20 13:58:56', 197204),
(464, 4958, NULL, 0, '05:30:00', '18:00:00', '1111110', NULL, NULL, 0, 1, '2018-05-20 11:46:21', 197401),
(467, 4959, NULL, 0, '05:00:00', '18:00:00', '1111100', NULL, NULL, 0, 1, '2017-09-20 14:05:31', 197416),
(468, 4959, NULL, 0, '06:45:00', '19:45:00', '0000011', NULL, NULL, 0, 1, '2017-09-20 14:05:50', 197416),
(469, 4960, NULL, 0, '10:30:00', '20:30:00', '0000011', NULL, NULL, 0, 1, '2017-09-20 14:06:32', 197420),
(470, 4965, NULL, 0, '10:00:00', '15:25:00', '0000011', NULL, NULL, 0, 1, '2017-09-20 14:07:59', 197524),
(471, 4965, NULL, 0, '16:25:00', '20:00:00', '0000011', NULL, NULL, 0, 1, '2017-09-20 14:08:17', 197524),
(472, 4963, NULL, 0, '05:00:00', '09:00:00', '1111111', NULL, NULL, 0, 1, '2018-05-20 11:32:52', 197505),
(473, 4963, NULL, 0, '10:00:00', '17:00:00', '1111110', NULL, NULL, 0, 1, '2018-05-20 11:33:12', 197505),
(474, 4956, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-20 14:10:33', 197327),
(475, 4955, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-20 14:10:42', 197312),
(476, 4966, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-20 14:10:53', 197543),
(477, 4968, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-20 14:11:02', 197613),
(478, 4970, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-20 14:11:12', 197632),
(479, 4969, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-20 14:11:18', 197628),
(480, 4971, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-20 14:11:25', 197647),
(481, 4961, NULL, 0, '14:40:00', '19:20:00', '1111111', NULL, NULL, 0, 1, '2018-08-27 09:45:37', 197435),
(482, 4797, NULL, 0, '06:05:00', '12:55:00', '1111100', '<p>1</p>', NULL, 0, 1, '2019-03-01 13:31:21', 193203),
(483, 4797, NULL, 0, '13:00:00', '18:45:00', '1111111', '<p><img src="https://pp.userapi.com/c847219/v847219472/1882e3/Zgzh5QDMsig.jpg" alt="" width="400" height="533" /></p>', NULL, 0, 1, '2019-03-01 13:28:37', 193203),
(484, 4797, NULL, 0, '06:05:00', '15:15:00', '0000011', '<p>1</p>', NULL, 0, 1, '2019-03-01 13:28:20', 193203),
(485, 4797, NULL, 0, '16:15:00', '18:45:00', '0000011', '<p>1</p>', NULL, 0, 1, '2019-03-01 13:27:18', 193203),
(486, 4972, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-21 09:17:49', 197702),
(487, 4967, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-21 09:24:29', 197609),
(488, 4734, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-22 12:13:54', 191405),
(489, 4727, NULL, 0, '00:00:00', '12:00:00', '1111111', NULL, NULL, 0, 1, '2017-09-24 11:13:31', 190826),
(490, 4727, NULL, 0, '13:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-24 11:13:46', 190826),
(491, 4929, NULL, 0, '06:10:00', '12:00:00', '1111100', NULL, NULL, 0, 1, '2017-09-28 20:50:28', 196818),
(492, 4929, NULL, 0, '13:20:00', '18:30:00', '1111100', NULL, NULL, 0, 1, '2017-09-28 20:51:03', 196818),
(493, 4929, NULL, 0, '06:10:00', '11:00:00', '0000011', NULL, NULL, 0, 1, '2017-09-28 20:51:27', 196818),
(494, 4929, NULL, 0, '12:00:00', '18:30:00', '0000011', NULL, NULL, 0, 1, '2017-09-28 20:51:47', 196818),
(495, 6082, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-17 10:35:48', 238003),
(498, 4907, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-28 21:42:08', 196038),
(499, 6071, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-28 21:43:06', 237806),
(501, 6079, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-17 10:41:36', 237914),
(505, 6080, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-28 21:49:34', 237929),
(508, 6083, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-28 21:51:28', 238014),
(509, 6084, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-28 22:11:43', 238103),
(510, 1144, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-28 22:12:13', 50300),
(511, 6119, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-28 22:12:46', 239002),
(512, 6120, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-09-28 22:12:59', 239017),
(513, 6113, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-09-28 22:43:53', 238902),
(514, 4974, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-28 07:17:37', 197907),
(515, 4438, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 10:00:28', 180222),
(516, 4441, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 09:57:17', 180523),
(517, 4443, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 09:57:55', 180608),
(518, 4444, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 09:59:34', 180612),
(519, 4445, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 09:58:30', 180701),
(520, 4447, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 09:58:46', 180805),
(521, 4448, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 10:01:11', 180812),
(522, 4449, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:01:33', 180909),
(523, 4450, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:01:40', 180913),
(524, 4451, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 10:01:55', 181009),
(525, 4452, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:02:34', 181013),
(526, 4453, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:02:45', 181028),
(527, 4454, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 10:03:02', 181102),
(528, 4455, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:03:09', 181117),
(529, 4456, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:03:21', 181121),
(530, 4425, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 10:03:33', 180010),
(531, 4428, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-08-28 07:18:08', 180044),
(532, 4518, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:04:06', 183413),
(533, 4519, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:04:13', 183428),
(534, 4521, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 10:04:30', 183606),
(535, 4526, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 11:03:05', 184026),
(536, 4525, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:05:12', 184011),
(537, 4527, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:05:20', 184100),
(538, 4528, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:05:34', 184115),
(539, 4530, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:05:56', 184134),
(540, 4531, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:06:04', 184204),
(541, 4532, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 12:39:26', 184219),
(542, 4666, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:06:26', 188718),
(543, 4665, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-04 10:06:37', 188614),
(544, 4664, NULL, 1, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-08-28 07:15:33', 188601),
(545, 4663, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 10:06:57', 188205),
(546, 4533, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 10:07:11', 184401),
(547, 6086, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, NULL, 1, '2017-10-04 12:14:07', 238122),
(548, 6096, NULL, 1, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-10-04 13:31:03', 238300),
(549, 6085, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2017-10-04 14:10:55', 238118),
(550, 6106, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-05 14:10:05', 238512),
(551, 6106, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-05 14:10:37', 238512),
(552, 6106, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-05 14:11:01', 238512),
(553, 5852, NULL, 0, '15:30:00', '19:00:00', '1111111', NULL, NULL, 0, 1, '2017-10-12 17:25:59', 230116),
(554, 6117, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-18 10:12:07', 238940),
(555, 6116, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-18 10:12:17', 238936),
(556, 6110, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-18 10:12:27', 238809),
(557, 6108, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-18 10:12:57', 238601),
(558, 6105, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-18 10:12:43', 238508),
(559, 6112, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-18 10:13:11', 238828),
(560, 6121, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-18 10:13:18', 239106),
(561, 6122, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-18 10:13:30', 239110),
(562, 1144, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2017-10-18 10:13:42', 50300),
(563, 4755, NULL, 0, '04:45:00', '22:30:00', '1111111', NULL, NULL, 0, 1, '2017-11-10 10:58:15', 192200),
(564, 4794, NULL, 0, '06:00:00', '21:00:00', '1111111', NULL, NULL, 0, 1, '2017-11-12 07:28:48', 193006),
(565, 5911, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-06-26 07:59:12', 232003),
(566, 5911, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-06-26 07:59:44', 232003),
(567, 4896, 1, 0, NULL, NULL, '1111111', '<p>Выходим из метро и входим в Ярославский вокзал через главный вход (не с торца), по указателю на выход к поездам дальнего следования. Проходим досмотр и выходим к платформам ПДС.  Далее вариантов несколько: </p>\r\n<h5>Ворота</h5>\r\n<p>Платформы ПДС и экспрессные отделяют между собой высокие ворота. Они довольно удобны, чтобы их перелезть. В результате попадаете на платформу для экспрессов, а оттуда уже можно спрыгнуть и с помощью догхелпинга попасть на пригородные платформы. <br />Вариант довольно удобен, но ВНЕЗАПНО из павильона может прибежать быдлан, которого можно опустить / зачмырить и он уйдёт. Не стоит бояться быдла - они охраняют турникеты и больше 10-15 секунд на вас не потратят! </p>\r\n<h5>Догхелпинг</h5>\r\n<p>Самый удобный вариант для тех, кому нужно попасть на пригородные платформы. Спрыгнуть с платформы и с помощью догхелпинга попасть на экспрессную платформу, а затем также с помощью догхелпинга попсть на пригородные. См. выше про быдлонов. Также охранник в часы-пик стоит на этом спуске.</p>\r\n<h5>Экспресс</h5>\r\n<p>Беспроигрышный вариант для тех, кому нужен экспресс. Пройти по экспрессной платформе до конца экспресса, спрыгнуть и с помощью догхелпинга попасть на экспрессную платформу. </p>\r\n<h5>ПДС</h5>\r\n<p>Самый неудобный и долгий, зато стопроцентный вариант, универсальный для всех вокзалов этой страны - платформы дальнего следования. Проходите их до конца, спрыгивайте и по путям переходите на пригородные платформы. </p>\r\n<h5>Лайфхак</h5>\r\n<p>Ну и небольшой лайфхак. РЭКСы до Пушкино и Болшево не проверяются. Попасть на платформу для экспрессов гораздо быстрее, нежели на пригородные. Если по времени подходит РЭКС, то пользуйтесь вариантом обхода для экспрессов, садитесь на РЭКС и в Мытищах / Пушкино пересаживайтесь на обычную элку, возможно, вы даже обгоните ту элку, на которую не успели на вокзале.</p>\r\n<h5>Выход без билета</h5>\r\n<p>В тоннеле на паровозик охране по фигу! Смело паровозьте! Но если по каким либо причинам паровозить неудобно, то выходите из последнего вагона и идёте по путям до ПДСных платформ. Там есть удобная лесенка, поднимайтесь и выходите.</p>', NULL, 0, 1, '2018-02-15 20:06:05', 195506),
(568, 4897, 1, 0, NULL, NULL, '1111111', '<p>На станции две платформы, одна с турникетами, другая без. Если приехали на отурникеченную - идём к концу платформы в сторону Москвы, спрыгиваем, заходим на другую платформу по лестнице. Выход осуществляется через мост и теоретически возможен контроль на входа на него (иначе зачем закрывать одну из двух лестниц, ведущих к бестурникетной платформе с моста?), но в жизни автором замечен не был.</p>\r\n<p>Более быстрый способ - спрыгиваем со стороны области, идём направо через пути и спокойно выходим в парк и к лестнице, ведущей на мост - никакого забора нет. На пути будет несколько грузовых вагонов - обходим их с правой стороны, в 10 метрах за мостом вагоны заканчиваются вместе с рельсами. Возле вагонов обычно тусуются ребята в форме, но это складские работники и охранники, зайцы их не интересуют.</p>\r\n<p><span style="color: #ff6600;">Только аккуратнее с переходом путей. Если прибыли со стороны области - не идите, покуда собака не уехала. Она полностью закрывает вид в сторону Москвы, откуда может на полной скорости пилить ПДС или экспресс.</span></p>', NULL, 0, 1, '2018-02-15 21:09:00', 195514),
(569, 4898, 1, 0, NULL, NULL, '1111111', '<p>Выход у северного торца Московской платформы заварен. Обходить нужно через парк Сокольники. <strong>Будьте внимательны: много поездов и ограниченный обзор.</strong></p>\r\n<p>Есть ещё один вариант: с платформы "на Москву" выходим из последнего вагона и вылезаем под платформой. Зимой скользко, а так очень удобно.</p>', null, 0, 1, '2018-02-15 21:16:12', 195529),
(570, 4899, 1, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-17 13:57:36', 195533),
(571, 4900, 1, 0, NULL, NULL, '1111111', '<p>Спускаетесь с любой платформы и идёте около 150 метров в сторону области. Выйти можно как на восток, так и на запад. </p>', NULL, 0, 1, '2018-02-15 21:18:23', 195548),
(572, 4889, 1, 0, NULL, NULL, '1111111', '<p>Рядом с Минусинской заканчивается забор, правда идти надо параллельно железной дороги в сторону области (не ближний свет и не почищено скорее всего...там еще остановка общ.транспорта рядом есть).</p>\r\n<p>Второй путь спрыгнуть в сторону Москвы и идти параллельно и в конце Анадырского этот путь кончается и есть проход между гаражами (был раньше по крайней мере)</p>', NULL, 0, 1, '2018-02-15 21:21:23', 195406),
(573, 4890, 1, 0, NULL, NULL, '1111111', '<p>Важно знать: платформа в сторону Москвы на удивление высокая, запрыгнуть с земли смогут не все. Вариантов обхода over 9000:</p>\r\n<ul>\r\n<li>Через 170 метров с мытищинской стороны будет легальный переход через жд-пути;</li>\r\n<li>Ворота возле мытищинского края платформы на Москву, ведущие на Анадырский проезд, частенько открыты, от них до края платформы - три метра;</li>\r\n<li>Московский торец: спрыгиваем, обходим торец платформы на Мытищи - всё, вы на свободе! Можете идти к официальному входу на платформу с турникетами и расписанием. Способ хорош, если надо в район Ярославский;</li>\r\n<li>Со стороны Анадырского проезда (Лосиноостровский район) аккурат напротив остановки "Анадырский проезд, 57" за гаражами есть чудесная дыра в заборе;</li>\r\n<li>Поднявшись на первый лестничный пролёт моста со стороны Анадырского проезда, можно спрыгнуть на платформу, забор там примерно по колено. В обратную сторону осуществимо с трудом.</li>\r\n</ul>', NULL, 0, 1, '2018-02-15 21:24:55', 195410),
(574, 4891, 1, 0, NULL, NULL, '1111111', '<p>С александровской платформы спрыгиваем с александровского торца, перелезаем на соседнюю неиспользуемую платформу, далее на мост (кому надо оказаться на левой стороне), либо на платформу не лезем, проходим 50 метров вдоль пути - и в дырку в заборе (для тех, кому направо). Залезть проще всего через забор. С московской платформы спрыгиваем с александровского торца, и прямо сразу будет настил - один из самых простых обходов на всем мосузле!</p>', NULL, 0, 1, '2018-02-15 21:26:12', 195425),
(575, 4892, 1, 0, NULL, NULL, '1111111', '<p><img title="Как обойти турникеты в Тайнинской" src="https://pp.userapi.com/c631628/v631628222/10777/NIv9EQQLy8I.jpg" alt="Как обойти турникеты в Тайнинской" width="604" height="443" /></p>', NULL, 0, 1, '2018-02-15 21:27:34', 195430),
(576, 5985, 1, 0, NULL, NULL, '1111111', '<p>Спрыгиваем с первого вагона в сторону области и идём налево, либо направо. Справа обход быстрее, так как есть ворота, которые чаще всего открыты. На выход лучше всего использовать паровощинг.</p>', NULL, 0, 1, '2018-07-20 10:31:16', 234808),
(577, 5986, 1, 0, NULL, NULL, '1111111', '<p><img title="Как обойти турникеты на Строителе" src="https://pp.userapi.com/c631628/v631628945/10612/GEGnD2nH98g.jpg" alt="Как обойти турникеты на Строителе" width="640" height="384" /></p>', NULL, 0, 1, '2018-02-15 21:30:21', 234812),
(578, 5987, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 234827),
(579, 5988, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 234831),
(580, 5989, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 234846),
(581, 5990, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 234850),
(582, 6017, 1, 0, NULL, NULL, '1111111', '<p>Спрыгиваем в сторону Москвы, проходим метров 100 - слева дырка в заборе.</p>\r\n<p>Также можно выйти с последнего вагона из Москвы и по поручням перелезть на неотурникеченную часть спутниковой платформы.</p>', NULL, 0, 1, '2018-02-15 21:33:25', 235904),
(583, 6018, 1, 0, NULL, NULL, '1111111', '<p>Легко спрыгнуть и залезть на платформу! Переходы в 15 и 30 метров от платформы). Удобнее залазить с Московского (Пушкинского) торца, там наварена арматура в виде лесенки.</p>', NULL, 0, 1, '2018-02-15 21:34:20', 235919),
(584, 6019, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235923),
(585, 6020, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235938),
(586, 6021, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235942),
(587, 6023, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236004),
(588, 6024, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236019),
(589, 6025, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236023),
(590, 6026, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236038),
(591, 6027, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236057),
(592, 6033, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236201),
(593, 6034, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236216),
(594, 6035, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236305),
(595, 6036, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236317),
(596, 6037, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236324),
(597, 6038, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236339),
(598, 6046, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236702),
(599, 6047, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236714),
(600, 6048, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236803),
(601, 6049, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 236907),
(602, 6051, 1, 0, NULL, NULL, '1111111', '<p>Просто обойти турникетный больше нельзя: установлены треугольники. Придётся спрыгивать на пути.</p>', NULL, 0, 1, '2018-02-15 21:35:07', 237007),
(603, 8124, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 313319),
(604, 8123, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 313304),
(605, 5994, 1, 0, NULL, NULL, '1111111', '<p>Хотя в районе платформы и имеются заборы вдоль путей, но они короткие, и в них имеются специальные проходы совсем рядом с платформой, которые неоднократно пытались заварить, но в итоге смирились с тем, что через подземный переход жители ходить не будут. Поэтому, учитывая также, что платформы на Подлипках низкие, большинство электричкеров практикуют платформ-джампинг, платформ-залазинг и дог-хелпинг.</p>', NULL, 0, 1, '2018-02-15 21:35:55', 234901),
(606, 5995, 6, 0, NULL, NULL, '1111111', '<p>Существует четыре платформы: две монинские (в Москву и из Москвы), фрязинская и спутниковая.</p>\r\n<p>На фрязинской платформе турникетов нет.</p>\r\n<h5>На монинских</h5>\r\n<p>На обеих платформах трёхсекционный забор, на платформе в Москву его проще всего перелезать у бывших калиток (под пешеходным мостом и у выхода из подземного перехода), на платформе из Москвы — в любом месте у турникетных павильонов, ведущих на мост; со стороны области есть калитка в 50 м от торца платформы "в Москву"; со стороны Москвы, спрыгнув с торца, можно пройти к подъездному пути ведущему под болшевскую эстакаду — перекрывающие его ворота заваривались столько раз, что их можно использовать как лестницу; также, спрыгнув с московского торца, можно пройти 400 м в сторону Москвы до наземного перехода; также можно доехать до Валентиновки и пройти в обратную сторону, благо расстояние до Болшева сравнительно небольшое (1,5 км).</p>\r\n<h5>На спутниковой</h5>\r\n<p>Можно спрыгнуть с московского торца и пройти 150 м вдоль путей либо в сторону Фрязино, либо в сторону Москвы до пешеходных переходов; со стороны тупиков возможен несложный переджампинг на монинскую платформу "в Москву" и выход через неё; оттуда же можно пройти к подъездному пути под эстакадой.</p>', NULL, 0, 1, '2018-02-17 13:42:33', 235001),
(607, 5996, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235016),
(608, 5997, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235020),
(609, 6005, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235406),
(610, 6006, 1, 0, NULL, NULL, '1111111', '<p>Большинство электричкеров на Воронке используют забор-обходинг, благо забор простирается не далее сотни метров в каждую сторону от платформы. Обычно этот способ практикуют со стороны области. Со стороны Москвы, если смотреть в город, т.е. налево, почти у самого начала платформы забор поставлен весьма удачно, что позволяет спуститься и пройти под ним почти в полный рост.</p>\r\n<p>Таким образом, со стороны москвы обходить забор смысла нет.</p>\r\n<p>Охранников мало и они дежурят у турникетов, и то не всегда.</p>', NULL, 0, 1, '2018-02-15 21:40:10', 235410),
(611, 6007, 1, 0, NULL, NULL, '1111111', '<p>Поднимаемся по лестнице на переход, затем спускаемся к турникетам нужной платформы и перелезаем несложный заборчик. На выход - повторить в обратном порядке. Так же можно перелезть через товарняки и затем применить платформ-климбинг.</p>', NULL, 0, 1, '2018-02-15 21:41:45', 235507),
(612, 6008, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235514),
(613, 6009, 1, 0, NULL, NULL, '1111111', '<p>Можно спрыгнуть с любого торца платформы. В 15 метрах от московского торца - легальный пешеходный переход, в 15 метрах от областного - настил, соединяющий две открытые калитки.</p>', NULL, 0, 1, '2018-02-15 21:42:21', 235603),
(614, 6010, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235618),
(615, 6011, NULL, 0, '06:00:00', '10:30:00', '1111111', NULL, NULL, 0, 1, '2018-03-14 09:33:08', 235622),
(616, 6012, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235637),
(617, 6013, 1, 0, NULL, NULL, '1111111', '<p>50 метров в сторону Фрязево - легальная открытая калитка в заборе по левую сторону от путей.</p>', NULL, 0, 1, '2018-02-15 21:43:03', 235707),
(618, 6014, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235711),
(619, 6015, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235726),
(620, 6016, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235730),
(621, 5998, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-24 10:08:33', 235035),
(622, 5999, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-03-14 09:30:51', 235105),
(623, 6000, 1, 0, NULL, NULL, '1111111', '<p>Спрыгиваем с фрязинского торца и сразу видим слева выбитую секцию забора.</p>', NULL, 0, 1, '2018-03-19 15:52:27', 235124),
(624, 6001, 1, 0, NULL, NULL, '1111111', '<p>Спрыгиваем с фрязинского торца и свободно проходим в город по протоптанной тропе. Забора вообще нет. Также на платформе слабо закреплен треугольник, его легко будет выбить. Тем более, рядом переезд.</p>', NULL, 0, 1, '2018-03-19 15:53:10', 235209),
(625, 6002, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-15 19:01:18', 235213),
(626, 6003, NULL, 1, NULL, NULL, '1111111', '	', NULL, 0, 1, '2018-03-19 15:49:11', 235302),
(627, 6004, 1, 0, NULL, NULL, '1111111', '<p>Обходинг прост: из последнего вагона (от Москвы) выход через калитку к официальному переходу через пути.</p>\r\n<p><img src="images/wayout/Fryazino-1.jpg" alt="Как обойти турникеты во Фрязино" width="640" height="853" /></p>\r\n<p><img src="images/wayout/Fryazino-2.jpg" alt="Как обойти турникеты во Фрязино" width="640" height="853" /></p>', NULL, 0, 1, '2018-03-14 09:29:01', 235317),
(630, 6029, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-17 15:27:39', 236112),
(631, 6030, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-17 15:27:51', 236127),
(632, 6031, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-17 15:28:06', 236131),
(633, 6032, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-17 15:28:20', 236146),
(634, 6028, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-17 15:28:35', 236108),
(635, 4787, NULL, 0, NULL, NULL, '1111111', NULL, NULL, NULL, 1, '2017-09-07 13:41:59', 192836),
(636, 5904, 1, 0, '00:00:00', '23:59:59', '1111111', '<p>Пройти через турникеты здесь будет нелегко, по 4-5-6 охранников. Лучшего всего спуститься на пути под мостом и перелезть через забор (добрые люди для удобства сделали своеобразные "ступеньки" ).</p>\r\n<h5>Способ №2</h5>\r\n<p>Пойти налево от выхода к турникетам к забору и перелезть.</p>\r\n<h5>Третий способ</h5>\r\n<p>Наиболее легкий и безопасный: пройти в конец платформы, спуститься к забору и через дырку оказаться на воле. Но будьте бдительны: менты стоят на конце платформы и следят, обычно в час пик утром в 6-7 часов и вечером в 19-20 часов.</p>', NULL, 0, 1, '2018-08-07 11:52:18', 231805),
(637, 5913, 1, 1, NULL, NULL, '1111111', '<p>Спрыгиваете с торца платформы (она островная) со стороны тупика отстойника. Переходите на крайний правый путь и идете вдоль зеленого забора, он недолгий, сразу за ним - направо. И вы в городе. На самом мосту пешеходном турникетов нет, так что возвращаемся немного назад и переходим на другую сторону Шатуры, если нужно.</p>', NULL, 0, 1, '2018-02-20 18:34:43', 232107),
(638, 4834, 1, 0, NULL, NULL, '1111111', '<p>Еесли идти на восток, то забор почти сразу кончится.</p>', NULL, 0, 1, '2018-02-20 18:35:18', 194210),
(639, 4835, 1, 0, NULL, NULL, '1111111', '<p>В сторону Рязани справа забор кончается, просто обходим его и залезаем (аналогичен и обратный вариант - спрыгиваем и обходим забор). Можно пройти и через турникеты, стоит как правило всего один охранник.</p>\r\n<p>В сторону Москвы забор тоже короткий.</p>', NULL, 0, 1, '2018-02-20 18:36:17', 194225),
(640, 4837, 1, 0, NULL, NULL, '1111111', '<p>Спрыгиваем у первого вагона из Москвы, затем нужно пройти немного в сторону Удельной и забор скоро закончится. Даже при всем желании, эти заячьи тропы (обходы) цппк не заделает никогда. </p>', NULL, 0, 1, '2018-02-20 18:36:57', 194244),
(641, 4838, 1, 0, NULL, NULL, '1111111', '<p>Кто знает, сообщите :-)</p>', NULL, 0, 1, '2018-02-20 18:37:53', 194259),
(642, 4867, 1, 0, NULL, NULL, '1111111', '<p>Станция затурникечена крайне слабо,можно легко попасть на платформу,если перелезть через легкий 3х-секционный забор со стороны Москвы или прямо около турникетного павильона. Влезть на островную платформу тоже не составит особых проблем. На московском торце есть легальный настил.</p>', NULL, 0, 1, '2018-02-21 13:07:26', 194808),
(643, 4868, 1, 0, NULL, NULL, '1111111', '<p>Заборы вдоль платформы можно обойти с любой стороны и перелезть в любом месте. Залезать с торцов сравнительно легко, но в 1 из 100 случаев из турникетного павильона может появиться быдлан и попросить (вполне вежливо) здесь не лезть.</p>\r\n<p>Желающие миновать турникеты, но пройти по тоннелю могут залезть/слезть через дырку возле начала пандуса. Таким образом, лезть на платформу/спрыгивать придётся всё равно, но можно, скажем, спрятаться от дождя.</p>', NULL, 0, 1, '2018-02-20 18:39:22', 194812),
(644, 4869, 1, 0, NULL, NULL, '1111111', '<p>Спрыг с московского торца и обход высокого забора в сторону города и на противоположную (в случае последней, если сразу забраться наверх для вас слишком круто, можно пройти 100 метров в сторону Москвы и пройти нормально). На платформе спутников (которая, к слову, ещё и ниже платформы обычных собак) есть удобная лестница на всё том же московском торце.</p>', NULL, 0, 1, '2018-02-21 13:04:07', 194827),
(645, 4872, 7, 0, NULL, NULL, '1111111', '<p>С обеих торцов платформы забор тянется крайне недолго, спрыгнуть с платформы или залезть на нее больших трудов не составляет. Если кому надо в сторону фабрики, можно воспользоваться неотурникеченной платформой по крайнему слева в сторону Рязани пути.</p>', NULL, 0, 1, '2018-02-20 18:41:03', 194850),
(646, 6132, 1, 0, NULL, NULL, '1111111', '<p>Самое простое - сразу лезть на мост/с моста для всех платформ, кроме третьей (правда, на спутниковой это может быть несколько неудобно). Идти по путям возможно, но вряд ли имеет смысл.</p>\r\n<p>С первой платформы также можно вылезать на улицу (кратчайший путь к автостанции, если что). На третьей платформе нужно перелезть через забор возле моста.</p>', NULL, 0, 1, '2018-02-20 18:41:49', 240118),
(647, 4885, 1, 0, NULL, NULL, '1111111', '<p>Спрыгнуть в конце платформы, и обойти забор, который тут же и кончается. При выходе на платформу в сторону Москвы действовать также. На турникетах обычно весь день 1-2 охранника, по вечерам часто стоят менты в начале платформы у моста.</p>', NULL, 0, 1, '2018-02-20 18:43:05', 195228),
(648, 5952, 1, 0, NULL, NULL, '1111111', '<p>Спрыгнуть около турникетов и до пешеходной дорожки 5 метров.</p>', NULL, 0, 1, '2018-02-20 18:43:29', 233744),
(649, 5953, 1, 0, NULL, NULL, '1111111', '<p>Можно спрыгнуть с платформы в сторону Рязани, идти в сторону 3-й платформы (на Озеры), далее обойти здание депо, там есть дырка в заборе, возможно что её заделали, тогда придется перелезать через забор. Также можно обойти по озерской ветке через переезд улицы Октябрьской Революции, но это долго и нудно.</p>\r\n<p>Если прыгать с платформы не хочется, можно пройти по мосту, спуститься на 1-ю (низкую) платформу, далее также идти в стороны 3-й и действовать по предыдущему алгоритму. Вполне реально пройти за кем-нибудь через турникеты, охранники, как правило, вялые, и их мало (один-два).</p>\r\n<p>Так же есть вариант обойти здание вокзала справа (в сторону Москвы) через гаражи, обычно открыты ворота. Если закрыты, то топаем дальше, проходим еще одно здание и в углу забора есть разомкнутые прутья. </p>\r\n<p>Ещё вариант - часто делают дырки с северной стороны станции, далее переход к городу по надземному переходу. </p>', NULL, 0, 1, '2018-02-20 18:44:37', 233805),
(650, 5906, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-20 18:54:06', 231829),
(651, 4855, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 12:25:49', 194653),
(652, 5941, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-20 19:09:16', 233519),
(653, 5936, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-20 19:09:25', 233330),
(654, 4854, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:39:37', 194649),
(655, 5909, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:39:51', 231918),
(656, 5914, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:41:23', 232111),
(657, 5931, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:41:32', 233006),
(658, 6191, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:41:48', 242720),
(659, 6190, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:42:03', 242715),
(660, 6194, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:42:22', 242823),
(661, 6192, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:42:35', 242804),
(662, 6193, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:42:44', 242819),
(663, 6195, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:42:50', 242908),
(664, 5932, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:43:16', 233106),
(665, 6161, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-08-06 11:12:46', 241604),
(666, 5920, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:48:00', 232431),
(667, 5918, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:48:11', 232412),
(668, 5919, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:48:21', 232427),
(669, 5921, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:48:29', 232501),
(670, 5924, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:48:38', 232605),
(671, 5925, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:48:48', 232615),
(672, 5926, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:48:55', 232709),
(673, 5943, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 08:55:20', 233608),
(674, 5945, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 08:55:37', 233627),
(675, 5946, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:36:40', 233631),
(676, 5948, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:36:49', 233701),
(677, 5949, NULL, 0, '05:30:00', '13:40:00', '1111110', NULL, NULL, 0, 1, '2018-02-21 08:56:43', 233716),
(678, 5951, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:56:55', 233735),
(679, 5970, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 08:57:12', 234206),
(680, 5966, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:57:26', 234102),
(681, 5968, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 08:57:32', 234121),
(682, 4870, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:00:04', 194831),
(683, 4871, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:00:17', 194846),
(684, 4874, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:01:16', 194916),
(685, 4875, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:01:26', 194920),
(686, 4876, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:02:12', 194935),
(687, 4877, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:02:21', 195001),
(688, 4880, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:02:30', 195035),
(689, 4879, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:02:41', 195020),
(690, 4881, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:03:02', 195105),
(691, 4883, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:03:13', 195209),
(692, 4884, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:03:36', 195213),
(693, 5944, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:04:04', 233612),
(694, 5576, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:08:12', 220006),
(695, 5595, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:08:20', 220307),
(696, 5673, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:08:28', 222800),
(697, 5983, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:08:46', 234620),
(698, 5978, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:08:51', 234403),
(699, 5965, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-02-21 09:19:05', 234009),
(700, 5954, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:20:00', 233810),
(701, 5955, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:20:10', 233824),
(702, 5957, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:20:16', 233843),
(703, 5956, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:20:23', 233839),
(704, 5958, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:20:30', 233858),
(705, 5959, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:20:38', 233862),
(706, 5960, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:20:50', 233909),
(707, 5961, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:20:58', 233913),
(708, 5962, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:21:05', 233928),
(709, 5963, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:21:12', 233932),
(710, 5964, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:21:18', 233947),
(711, 5581, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:25:38', 220059),
(712, 5585, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:26:14', 220097),
(713, 5579, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:27:29', 220032),
(714, 25779, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:28:09', 0),
(715, 5577, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:28:49', 220010),
(716, 5980, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:31:25', 234511),
(717, 5916, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:33:18', 232319),
(718, 5939, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:34:26', 233364),
(719, 5938, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:34:36', 233359),
(720, 5937, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-02-21 09:34:42', 233345),
(721, 4873, 1, 0, NULL, NULL, '1111111', '<p>Банальный перелазинг забора на платформе спутников либо немного пройти в сторону Москвы, забор быстро кончится.</p>', NULL, 0, 1, '2018-02-21 13:06:11', 194901),
(723, 5593, NULL, 0, '08:00:00', '10:15:00', '0000001', NULL, NULL, NULL, 1, '2018-02-22 08:01:23', 220218),
(724, 5593, NULL, 0, '13:00:00', '17:45:00', '0000001', NULL, NULL, NULL, 1, '2018-02-22 08:03:40', 220218),
(725, 5593, NULL, 0, '08:00:00', '10:15:00', '1111000', NULL, NULL, NULL, 1, '2018-02-22 08:04:35', 220218),
(726, 5593, NULL, 0, '13:00:00', '17:45:00', '1111000', NULL, NULL, NULL, 1, '2018-02-22 08:05:08', 220218),
(727, 5592, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-03-02 14:16:18', 220203),
(728, 4850, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-03-14 09:19:57', 194600),
(729, 4850, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-03-14 09:20:36', 194600),
(730, 6011, NULL, 0, '11:30:00', '17:45:00', '1111111', NULL, NULL, 0, 1, '2018-03-14 09:33:24', 235622),
(731, 5853, NULL, 0, '06:00:00', '12:00:00', '0000011', NULL, NULL, 0, 1, '2018-03-25 15:45:53', 230120),
(732, 5853, NULL, 0, '13:00:00', '18:00:00', '0000011', NULL, NULL, 0, 1, '2018-03-25 15:46:26', 230120),
(733, 4781, NULL, 0, '05:30:00', '11:35:00', '1111111', NULL, NULL, 0, 1, '2018-04-06 14:15:58', 192713),
(734, 4781, NULL, 0, '13:05:00', '14:15:00', '1111111', NULL, NULL, 0, 1, '2018-04-06 14:16:21', 192713),
(735, 4781, NULL, 0, '14:45:00', '18:00:00', '1111111', NULL, NULL, 0, 1, '2018-04-06 14:16:44', 192713),
(736, 4789, NULL, 0, '06:15:00', '11:45:00', '1111111', NULL, NULL, 0, 1, '2018-04-06 14:17:19', 192910),
(737, 4789, NULL, 0, '13:00:00', '14:00:00', '1111111', NULL, NULL, 0, 1, '2018-04-06 14:17:34', 192910),
(738, 4789, NULL, 0, '14:30:00', '19:00:00', '1111111', NULL, NULL, 0, 1, '2018-04-06 14:17:50', 192910),
(739, 4748, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-04-11 12:33:31', 191804),
(740, 4790, NULL, 0, '06:00:00', '11:25:00', '1111100', NULL, NULL, 0, 1, '2018-04-11 14:09:58', 192925),
(741, 4790, NULL, 0, '13:00:00', '18:10:00', '1111100', NULL, NULL, 0, 1, '2018-04-11 14:10:23', 192925),
(742, 4790, NULL, 0, '06:20:00', '11:50:00', '0000011', NULL, NULL, 0, 1, '2018-04-11 14:10:56', 192925),
(743, 4790, NULL, 0, '13:00:00', '15:00:00', '0000011', NULL, NULL, 0, 1, '2018-04-11 14:11:39', 192925),
(744, 4790, NULL, 0, '15:40:00', '18:30:00', '0000011', NULL, NULL, 0, 1, '2018-04-11 14:12:00', 192925),
(745, 4964, NULL, 0, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-04-24 12:13:43', 197511),
(746, 4851, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-04-25 10:31:57', 194615),
(747, 4954, NULL, 0, '05:30:00', '18:00:00', '1111110', NULL, NULL, 0, 1, '2018-05-04 09:58:08', 197308),
(748, 4954, NULL, 0, '05:30:00', '20:00:00', '0000001', NULL, NULL, 0, 1, '2018-05-04 09:58:25', 197308),
(749, 1490, NULL, 0, '06:30:00', '18:25:00', '0000001', NULL, NULL, 0, 1, '2018-05-14 10:51:12', 60853),
(750, 4963, NULL, 0, '10:00:00', '19:10:00', '0000011', NULL, NULL, 0, 1, '2018-05-20 11:33:35', 197505),
(751, 4958, NULL, 0, '05:30:00', '19:30:00', '0000001', NULL, NULL, 0, 1, '2018-05-20 11:46:47', 197401),
(752, 4853, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-06-26 07:53:58', 194634),
(753, 4853, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-06-26 07:54:09', 194634),
(754, 4864, NULL, 1, NULL, NULL, '1111100', NULL, NULL, 0, 1, '2018-06-26 07:56:37', 194757),
(755, 4864, NULL, 1, NULL, NULL, '1111100', NULL, NULL, 0, 1, '2018-06-26 07:57:47', 194757),
(756, 4864, NULL, 1, NULL, NULL, '0000011', NULL, NULL, 0, 1, '2018-06-26 07:57:11', 194757),
(757, 4864, NULL, 1, NULL, NULL, '0000011', NULL, NULL, 0, 1, '2018-06-26 07:57:38', 194757),
(758, 4865, NULL, 1, NULL, NULL, '1111100', NULL, NULL, 0, 1, '2018-06-26 08:02:04', 194761),
(759, 4865, NULL, 1, NULL, NULL, '0000011', NULL, NULL, 0, 1, '2018-06-26 08:02:45', 194761),
(760, 4836, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-06-27 10:28:05', 194234),
(761, 4843, NULL, 1, NULL, NULL, '1111111', NULL, null, 0, 1, '2018-06-27 10:30:22', 194300),
(762, 4852, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:48:32', 194620),
(763, 4856, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:48:53', 194668),
(764, 4866, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:49:04', 194776),
(765, 4857, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:49:24', 194672),
(766, 4858, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:49:51', 194687),
(767, 4859, NULL, 0, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-08-07 11:50:25', 194704),
(768, 4860, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:50:42', 194719),
(769, 4861, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:50:51', 194723),
(770, 4862, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:51:04', 194738),
(771, 4863, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:51:28', 194742),
(772, 5907, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:52:43', 231833),
(773, 5905, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:52:54', 231814),
(774, 5908, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:53:13', 231903),
(775, 5910, NULL, 1, NULL, NULL, '1111111', NULL, NULL, 0, 1, '2018-08-07 11:53:24', 231922),
(776, 5915, NULL, 1, '00:00:00', '23:59:59', '1111111', NULL, NULL, 0, 1, '2018-08-07 11:53:45', 232304),
(777, 5852, NULL, 0, '19:00:00', '21:30:00', '1111100', NULL, NULL, 0, 1, '2018-08-08 11:08:50', 230116),
(778, 4962, NULL, 0, '13:00:00', '19:00:00', '0000001', NULL, NULL, 0, 1, '2018-08-17 13:29:01', 197445),
(779, 4962, NULL, 0, NULL, NULL, '1111110', NULL, NULL, 0, 1, '2018-08-17 13:29:18', 197445);

delete from `ildjs_rw2_station_tickets` where esr = 0 limit 1;

update `#__rw_stations` s set turnstiles = (select turnstiles from `ildjs_rw2_station_tickets` t where t.esr = s.esr and t.turnstiles is not null);