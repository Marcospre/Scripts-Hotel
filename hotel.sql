drop table Cliente cascade constraints;
drop table Trabajador cascade constraints;
drop table Reserva cascade constraints;
drop table Habitaciones cascade constraints;
drop table Hotel cascade constraints;
drop table Traba_Reser cascade constraints;
drop table Habi_Reser cascade constraints;

create table Cliente(
    DNI varchar2(9),
    Nombre varchar2(20),
    Apellidos varchar2(20),
    Edad number(2),
    Correo varchar2(20),
    Telefono varchar2(9)
    );
    
create table Trabajador(
    DNI varchar2(9),
    ID varchar2(10), 
    Nombre varchar2(20),
    Apellidos varchar2(20),
    Edad number(2),
    Correo varchar2(20),
    Telefono varchar2(9),
    Contraseña varchar2(20)
    );
    
create table Reserva(
    codigo varchar2(20),
    precio number(20,10),
    DNI_cliente varchar2(9),
    fecha_entrada varchar2(20),
    fecha_salida varchar2(20),
    fecha_reserva varchar2(20)
    );
    
create table Habitaciones(
    numero varchar2(4),
    tipo varchar2(20),
    precio number(5,2),
    disponi number(1),
    nombre_hotel varchar2(10)
    
    );
    
create table Hotel(
    nombre varchar2(10),
    direccion varchar2(20),
    valorecion varchar2(5)
    
    );
    
create table Traba_Reser(
    id_trabajador varchar2(9),
    codigo_reserva varchar2(20),
    fecha_reserva varchar2(20),
    fecha_vista varchar2(10)
    
    );
    
create table Habi_Reser(
    numero varchar2(10),
    codigo_reser varchar2(20)
    
    
    );
    

alter table Cliente
    add constraint pk_cliente
    primary key (DNI);
    
alter table Trabajador
    add constraint pk_trabajador
    primary key (ID);
    
alter table Reserva
    add constraint pk_reserva
    primary key(codigo);
    
alter table Habitaciones
    add constraint pk_habitacion
    primary key(numero);
    
alter table Hotel
    add constraint nombre
    primary key(nombre);
    
alter table Traba_Reser
    add constraint pk_dni
    primary key(id_trabajador, codigo_reserva);
    
alter table Habi_Reser
    add constraint ph_habi_reser
    primary key(numero, codigo_reser);


    

alter table Reserva
    add constraint fk_cliente
    foreign key (DNI_cliente) references Cliente(DNI);
    
alter table Habitaciones
    add constraint fk_Hotel
    foreign key (nombre_hotel) references Hotel(nombre);
    
alter table Traba_Reser
    add constraint fk_trabajador_dni
    foreign key (id_trabajador)references Trabajador(ID);
    
alter table Traba_Reser
    add constraint fk_trabajador_codigo
    foreign key (codigo_reserva)references Reserva(codigo);

alter table Habi_Reser
    add constraint fk_habi_reser_numero
    foreign key(numero) references Habitaciones(numero);
    
alter table Habi_Reser
    add constraint fk_habi_reser_codigo
    foreign key(codigo_reser) references Reserva(codigo);
    
commit;
    


    
