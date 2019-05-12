create table `#__rw_directions`
(
    id       int(3) auto_increment
        primary key,
    title    varchar(100)      not null comment 'Название направления',
    parity   tinyint           not null comment 'Чётность. 0 - в сторону нулевой станции на направлении, 1 - наоборот',
    color    varchar(7)        not null comment 'Цвет направления',
    font     varchar(7)        not null comment 'Цвет текста на направлении',
    info     text              null comment 'Инфа о контролёрах',
    is_cocon tinyint default 0 not null comment 'Кокон на направлении'
)
    comment 'Список направлений';

create index `#__rw_directions_is_cocon_index`
    on `#__rw_directions` (is_cocon);

create index `#__rw_directions_parity_index`
    on `#__rw_directions` (parity);

INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (1, 'Белорусское', 0, '#008000', '#ffffff', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (2, 'Горьковское', 1, '#fefba6', '#857979', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (3, 'Казанское', 1, '#00d1b9', '#ffffff', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (4, 'Киевское', 0, '#00ddff', '#ffffff', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (5, 'Кольцевое (БМО)', 0, '#000000', '#ffffff', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (6, 'Курское', 0, '#0026ff', '#ffffff', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (7, 'Ленинградское', 1, '#e3bd76', '#ffffff', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (8, 'Павелецкое', 0, '#b3e6b6', '#050505', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (9, 'Рижское', 0, '#00bd5b', '#ffffff', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (10, 'Савёловское', 1, '#ffa600', '#ffffff', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (11, 'Ярославское', 1, '#008dd2', '#ffffff', null, 0);
INSERT INTO `#__rw_directions` (id, title, parity, color, font, info, is_cocon) VALUES (12, 'Алексеевская соединительная линия', 0, '#945d0a', '#ffffff', null, 0);