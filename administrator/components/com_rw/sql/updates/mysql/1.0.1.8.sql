alter table `#__payments`
    add withdraw_amount double(8,2) unsigned default 0.00 not null after amount;

alter table `#__payments`
    add operationID varchar(255) default null null after withdraw_amount;

alter table `#__payments`
    add label varchar(255) default null null after operationID;

alter table `#__payments`
    add sender varchar(16) default null null comment 'Отправитель';

create index `#__payments_label_index`
    on `#__payments` (label);

create index `#__payments_operationID_index`
    on `#__payments` (operationID);

create index `#__payments_withdraw_amount_index`
    on `#__payments` (withdraw_amount);

create index `#__payments_sender_index`
    on `#__payments` (sender);

create table `#__rw_club`
(
    id int auto_increment,
    userID int not null,
    expire timestamp default current_timestamp not null,
    constraint `#__rw_club_pk`
        primary key (id),
    constraint `#__rw_club_#__users_id_fk`
        foreign key (userID) references `#__users` (id)
)
    comment 'Членство в клубе';

create index `#__rw_club_expire_index`
    on `#__rw_club` (expire);

create unique index `#__rw_club_userID_uindex`
    on `#__rw_club` (userID);

