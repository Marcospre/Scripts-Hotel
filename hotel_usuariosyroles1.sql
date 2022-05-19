create role admin_hotel identified by "tricaro";
create role cliente;

grant all privileges to admin_hotel;
grant select to cliente;
