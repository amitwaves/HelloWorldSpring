create sequence if not exists project_id_seq
start with 1 increment by 1 cache 100;

create table if not exists PROJECT (
id bigint DEFAULT project_id_seq.nextval primary key,
version bigint not null default 1,
name varchar(255) not null,
start_date date not null,
end_date date not null,
last_updated_timestamp timestamp with time zone not null,
total_cost number(12,2),
deleted boolean default false
);

create sequence if not exists sub_project_id_seq
start with 1 increment by 1 cache 100;

create table if not exists SUB_PROJECT (
id bigint DEFAULT sub_project_id_seq.nextval primary key,
version bigint not null default 1,
name varchar(255) not null,
start_date date not null,
end_date date not null,
last_updated_timestamp timestamp with time zone,
department_number bigint not null,
cost number(12,2) not null,
project_id bigint not null,
deleted boolean default false,
foreign key (project_id) references PROJECT(id)
);

