create table message
(
    id                bigint not null primary key,
    message               varchar(255)
);

insert into message(id, message) select id, concat(cast('message ' as varchar), cast(id as varchar)) from generate_series(1, 1000) as id;