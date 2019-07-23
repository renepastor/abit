/*aut: renepastor@gmail.com
  fec: 19/06/2017
*/
begin;

--alter table only nucleo.ambientes add foreign key (persona_id) references nucleo.usuarios(pers_id);
alter table only nucleo.dispositivos add foreign key (ambiente_id) references nucleo.ambientes(id);
alter table only nucleo.dispositivos add foreign key (tipo_dispositivo_id) references nucleo.tbl_tipos(id);

alter table only nucleo.user_dispositivos add foreign key (dispositivo_id) references nucleo.dispositivos(id);
alter table only nucleo.user_dispositivos add foreign key (persona_id) references nucleo.usuarios(pers_id);

create table nucleo.tmb_instituciones (
  id bigserial primary key,
  intitucion dtexto,
  direccion dtexto2,
  telefono dtexto2,
  fecha_fundacion dfecha,
  estado destado,
  usuario duser,
  editado dfechahora
);

create table nucleo.tmb_puestos (
  id bigserial primary key,
  codigo dtexto,
  tipo_estado_id dllave,
  coordenadas dpunto2,
  area dpunto2,
  dimension dpunto2,
  estado destado,
  usuario duser,
  editado dfechahora
);
alter table only nucleo.tmb_puestos add foreign key (tipo_estado_id) references nucleo.tbl_tipos(id);

create table nucleo.tmb_propietarios (
  id bigserial primary key,
  primer_nombre dtexto,
  segundo_nombre dtexto2,
  primer_apellido dtexto,
  segundo_apellido dtexto2,
  ci dtexto,
  extencion dtexto,
  direccion dtexto,
  telefono dtexto,
  fecha_nacimiento dfecha,
  estado destado,
  usuario duser,
  editado dfechahora
);
alter table only nucleo.tmb_documentos add foreign key (puesto_propietario_id) references nucleo.tmb_puestos_propietarios(id);


create table nucleo.tmb_puestos_propietarios (
  id bigserial primary key,
  propietario_id dllave,
  puesto_id dllave,
  incorporacion dfecha,
  trasferencias dfecha2,
  estado destado,
  usuario duser,
  editado dfechahora
);

create table nucleo.tmb_documentos(
  id bigserial primary key,
  puesto_propietario_id dllave,
  tipo_documento_id dllave,
  archivo djson,
  estado destado,
  usuario duser,
  editado dfechahora
);
alter table only nucleo.tmb_documentos add foreign key (puesto_propietario_id) references nucleo.tmb_puestos_propietarios(id);
alter table only nucleo.tmb_documentos add foreign key (tipo_documento_id) references nucleo.tbl_tipos(id);


commit;

