
/*Tablespaces*/

create tablespace tablespace_administrador
    datafile 'tablespace_administrador.dbf'
    size 2M;
    
create tablespace tablespace_cliente
    datafile 'tablespace_cliente.dbf'
    size 2M;

/* Users */

create user admin_user identified by administrador
default tablespace tablespace_administrador
temporary tablespace temp
profile default
quota 1M on tablespace_administrador;

grant create session to admin_user;

create user cliente_user identified by cliente
default tablespace tablespace_cliente
temporary tablespace temp
profile default
quota 1M on tablespace_cliente;

grant create session to cliente_user;

/*Profiles*/

create profile admin_sesion LIMIT
    SESSIONS_PER_USER 2
    CPU_PER_SESSION UNLIMITED
    IDLE_TIME 15
    CONNECT_TIME UNLIMITED
    FAILED_LOGIN_ATTEMPTS 3
    PASSWORD_LOCK_TIME 2;
    
create profile client_sesion LIMIT
    SESSIONS_PER_USER 2
    CPU_PER_SESSION UNLIMITED
    IDLE_TIME 15
    CONNECT_TIME UNLIMITED
    FAILED_LOGIN_ATTEMPTS 3
    PASSWORD_LOCK_TIME 2;

/* Role administrator */

create role admin_hotel identified by "tricaro";
/*Role client*/

create role cliente;

/*Add privileges to roles*/

grant all privileges to admin_hotel;
grant select on "RESERVA" to cliente;

/*Add role to user */

grant admin_hotel to admin_user;
grant cliente to cliente_user;
