
create table Salesperson (
   salesperson_id SERIAL primary key,
   first_name varchar(100),
   last_name varchar(100)
);

select * from Salesperson


create table Mechanic (
   mechanic_id SERIAL primary key,
   first_name varchar(100),
   last_name varchar(100)
);

select * from mechanic

create table CAR (
   car_id SERIAL primary key,
   serial_number integer,
   make varchar(100),
   model varchar(100),
   color varchar(100),
   year integer
);

select * from Car

create table Customer (
   customer_id SERIAL primary key,
   first_name varchar(100),
   last_name varchar(100),
   phone_number varchar(15),
   address varchar(150),
   city varchar(100),
   state varchar(100),
   country varchar(100),
   postal_code integer
);

select * from Customer

create table sales_invoice (
   invoice_id SERIAL primary key,
   invoice_number integer,
   date varchar(100),
   car_id integer,
   customer_id integer,
   salesperson_id integer,
    foreign key(salesperson_id) references Salesperson(salesperson_id)
);
select * from sales_invoice

create table service_ticket (
   service_ticket_id SERIAL primary key,
   car_id integer,
   customer_id integer,
   date_received  varchar(100),
   date_returned_to_customer varchar(100),
    foreign key(car_id) references Car(car_id)
);

select * from service_ticket

create table service_mechanic (
   service_mechanic_id SERIAL primary key,
   service_ticket_id integer,
   mechanic_id integer,
   hourly_rate decimal,
    foreign key(service_ticket_id) references service_ticket(service_ticket_id)
);

select * from service_mechanic

create table parts_used (
   part_id  SERIAL primary key,
   service_ticket_id integer,
   part_number integer,
   price decimal,
     foreign key(service_ticket_id) references service_ticket(service_ticket_id)
);

select * from parts_used


