CREATE TABLE IF NOT EXISTS `w6ega_directions`
(
    `id`       int(3)        NOT NULL,
    `alias`    varchar(10)   NOT NULL,
    `title`    varchar(100)  NOT NULL,
    `parity`   tinyint(4)    NOT NULL COMMENT 'Чётность. 0 - в сторону нулевой станции на направлении, 1 - наоборот',
    `telegram` set ('0','1') NOT NULL DEFAULT '0' COMMENT 'Доступна для выбора боту телеграм',
    `color`    varchar(7)    NOT NULL COMMENT 'Цвет направления',
    `font`     varchar(7)    DEFAULT NULL COMMENT 'Цвет текста на направлении',
    `active`   tinyint(4)    NOT NULL DEFAULT '0' COMMENT 'Показывается на сайте',
    `showMenu` tinyint(4)    NOT NULL COMMENT 'Показывается ли в меню направлений',
    `state`    tinyint(4)    NOT NULL DEFAULT '0',
    `sync`     tinyint(1)    NOT NULL DEFAULT '0',
    `filter`   tinyint(4)    NOT NULL DEFAULT '0' COMMENT 'Доступно в фильтре'
) ENGINE = InnoDB
  AUTO_INCREMENT = 13
  DEFAULT CHARSET = utf8 COMMENT ='Список направлений';

INSERT INTO `w6ega_directions` (`id`, `alias`, `title`, `parity`, `telegram`, `color`, `font`, `active`,
                                `showMenu`, `state`, `sync`, `filter`)
VALUES (1, 'msk-bel', 'Белорусское', 0, '0', '#008000', '#ffffff', 1, 1, 1, 1, 1),
       (2, 'msk-gor', 'Горьковское', 1, '0', '#fefba6', '#857979', 1, 1, 1, 1, 1),
       (3, 'msk-kaz', 'Казанское', 1, '0', '#00d1b9', '#ffffff', 0, 1, 1, 1, 1),
       (4, 'msk-kiv', 'Киевское', 0, '1', '#00ddff', '#ffffff', 1, 1, 1, 1, 1),
       (5, 'msk-kol', 'Кольцевое (БМО)', 0, '0', '#000000', NULL, 0, 0, 0, 0, 1),
       (6, 'msk-kur', 'Курское', 0, '0', '#0026ff', '#ffffff', 1, 1, 1, 1, 1),
       (7, 'msk-len', 'Ленинградское', 1, '0', '#e3bd76', '#ffffff', 1, 1, 1, 1, 1),
       (8, 'msk-pav', 'Павелецкое', 0, '0', '#b3e6b6', '#050505', 1, 1, 1, 1, 1),
       (9, 'msk-riz', 'Рижское', 0, '0', '#00bd5b', '#ffffff', 1, 1, 1, 1, 1),
       (10, 'msk-sav', 'Савёловское', 1, '1', '#ffa600', '#ffffff', 1, 1, 1, 1, 1),
       (11, 'msk-yar', 'Ярославское', 1, '0', '#008dd2', '#ffffff', 0, 1, 1, 1, 1),
       (12, 'msk-asl', 'Алексеевская соединительная линия', 0, '0', '#945d0a', '#ffffff', 1, 0, 1, 0, 0);

ALTER TABLE `w6ega_directions`
    ADD PRIMARY KEY (`id`),
    ADD KEY `alias` (`alias`);

ALTER TABLE `w6ega_directions`
    MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 13;
