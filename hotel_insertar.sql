insert into Hotel values('MyDHotels','fasdfuid','****');
insert into Trabajador values('44658338J','1T','Marcos','Prego Salvador',25,'ikbsj@plaiaundi.net', 654645665,'marcos');
insert into Trabajador values('34756876Y','2T','David','Barberio',23,'ikbrz@plaiaundi.net',456734568,'david');

insert into Habitaciones values('1I','Individual',49.00,1,'MyDHotels');
insert into Habitaciones(numero, tipo, precio, disponi, nombre_hotel) values('2I','Individual',49.00,1,'MyDHotels');
insert into Habitaciones(numero, tipo, precio, disponi, nombre_hotel) values('1D','Doble',59.00,1,'MyDHotels');
insert into Habitaciones(numero, tipo, precio, disponi, nombre_hotel) values('2D','Doble',59.00,1,'MyDHotels');
insert into Habitaciones(numero, tipo, precio, disponi, nombre_hotel) values('1F','Familiar',69.00,1,'MyDHotels');
insert into Habitaciones(numero, tipo, precio, disponi, nombre_hotel) values('2F','Familiar',69.00,1,'MyDHotels');
insert into Habitaciones(numero, tipo, precio, disponi, nombre_hotel) values('1L','Lujo',100.00,1,'MyDHotels');
insert into Habitaciones(numero, tipo, precio, disponi, nombre_hotel) values('2L','Lujo',100.00,1,'MyDHotels');

commit;