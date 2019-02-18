insert into PROJECT (name, start_date, end_date, last_updated_timestamp) 
values ('Project 1', '2019-01-01', '2019-01-15', CURRENT_TIMESTAMP);

insert into PROJECT (name, start_date, end_date, last_updated_timestamp) 
values ('Project 2', '2019-01-31', '2019-02-15', CURRENT_TIMESTAMP);

insert into SUB_PROJECT (name, start_date, end_date, last_updated_timestamp, department_number, cost, project_id) 
values ('Sub Project 1_1', '2019-01-01', '2019-01-05', CURRENT_TIMESTAMP, 101, 25000.00, (select id from PROJECT where name='Project 1'));

insert into SUB_PROJECT (name, start_date, end_date, last_updated_timestamp, department_number, cost, project_id) 
values ('Sub Project 1_2', '2019-01-10', '2019-01-15', CURRENT_TIMESTAMP, 102, 20000.00, (select id from PROJECT where name='Project 1'));

insert into SUB_PROJECT (name, start_date, end_date, last_updated_timestamp, department_number, cost, project_id) 
values ('Sub Project 2_1', '2019-01-31', '2019-02-15', CURRENT_TIMESTAMP, 201, 100000.00, (select id from PROJECT where name='Project 2'));