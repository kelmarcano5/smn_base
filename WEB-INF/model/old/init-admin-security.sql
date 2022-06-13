insert into smn_seguridad.s_application
(app_id, app_alias, description, pwd_policy)
values
(1,'admin','Administrador de Seguridad',-1)
;

insert into smn_seguridad.s_role 
(role_id, app_id, rolename, description)
values
(1,1,'sysadmin','Administrador del Sistema')
;

insert into smn_seguridad.s_user
(user_id, userlogin, passwd, lname, fname, email, enabled, pwd_policy, force_newpass, locale)
values
(1, 'admin', 'Refl5zB+dMsNHvccepOJdw==', 'Eduardo', 'Juan', 'juanc.eduardo@omzyasociados.com', 1, -2, 0, 'es')
;

insert into smn_seguridad.s_user_role
(user_role_id, user_id, role_id)
values
(1, 1, 1)
;

INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (1,'/action/admin/app/delete','Eliminar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (2,'/action/admin/app/edit','Editar regisitro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (3,'/action/admin/app/header','Encabezado común para todas la páginas del módulo',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (4,'/action/admin/app/insert','Insertar un registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (5,'/action/admin/app/pdf','Generar reporte PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (6,'/action/admin/app/update','Actualizar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (7,'/action/admin/app/view','Aplicaciones y Menús',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (8,'/action/admin/blocked/enable','Habilitar usuario',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (9,'/action/admin/blocked/header','Encabezado común para todos las páginas del módulo',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (10,'/action/admin/blocked/view','Usuarios Bloqueados',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (11,'/action/admin/menu/delete','Eliminar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (12,'/action/admin/menu/edit','Editar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (13,'/action/admin/menu/header','Encabezado común para todas las páginas del módulo',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (14,'/action/admin/menu/insert','Insertar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (15,'/action/admin/menu/pdf','PDF Report - Menu de Aplicaciones',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (16,'/action/admin/menu/update','Actualizar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (17,'/action/admin/menu/view','Página principal - ver todos los registro y el formulario para insertar',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (18,'/action/admin/menuitem/delete','Eliminar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (19,'/action/admin/menuitem/edit','Editar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (20,'/action/admin/menuitem/header','Encabezado común para todas la páginas del módulo',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (21,'/action/admin/menuitem/insert','Insertar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (22,'/action/admin/menuitem/update','Actualizar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (23,'/action/admin/menuitem/view','Página principal - ver todos los registros y el formulario para agregar',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (24,'/action/admin/nosecure/form','Actions sin seguridad',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (25,'/action/admin/nosecure/notfound','Retornar un javascript con una respuestade que no existen servicios inseguros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (26,'/action/admin/nosecure/pdf','Generar reporte PDF de los servicios inseguros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (27,'/action/admin/nosecure/redirect','Retorna javascript que llama a funciones en la pagina principal, para la generacionde PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (28,'/action/admin/nosecure/search','Ejecuta la lógica para determinar que servicios no seencuentra seguros o insertados en BD de seguridad',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (29,'/action/admin/nosecure/sql','Exporta a TXT el script SQL de los serviciosno seguros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (30,'/action/admin/role/auth/header','Encabezado Común para todas las páginas del módulo',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (31,'/action/admin/role/auth/save','Autorización de Rol - Actualizar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (32,'/action/admin/role/auth/view','Ver/seleccionar servicios autorizados para este rol',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (33,'/action/admin/role/delete','Eliminar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (34,'/action/admin/role/edit','Editar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (35,'/action/admin/role/header','Encabezado común para todas las páginas del módulo',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (36,'/action/admin/role/insert','Insertar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (37,'/action/admin/role/pdf','PDF Report - Roles de Usuarios',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (38,'/action/admin/role/update','Actualizar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (39,'/action/admin/role/view','Administrar Roles',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (40,'/action/admin/service/delete','Servicio - Eliminar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (41,'/action/admin/service/edit','Leer registro y retornar javascript que llenaun formulario con los datos del registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (42,'/action/admin/service/form','Mantenimiento de Servicios',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (43,'/action/admin/service/insert','Servicio - Insertar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (44,'/action/admin/service/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (45,'/action/admin/service/search','Ejecutar consulta usando un modulo de motorde búsqueda y enrutar dependiendo de que un recordsettenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (46,'/action/admin/service/update','Servicio - Actualizar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (47,'/action/admin/service/view','Ver resultado de consulta paginado',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (48,'/action/admin/user/addnew','Usuario- Insertar nuevo registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (49,'/action/admin/user/delete','Usuario - Eliminar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (50,'/action/admin/user/disable','Bloquear cuenta',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (51,'/action/admin/user/edit','Usuario - Editar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (52,'/action/admin/user/filter','Administrar Usuarios',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (53,'/action/admin/user/form','Usuario (include) - formulario de filtro de búsqueda',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (54,'/action/admin/user/header','Encabezado común para todas lapáginas del módulo',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (55,'/action/admin/user/insert','Usuario - Insertar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (56,'/action/admin/user/newpass/form','Formulario de edición para reestablecer la contraseña de un usuario',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (57,'/action/admin/user/newpass/update','Guardar nueva contraseña',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (58,'/action/admin/user/notfound','No se encontraron registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (59,'/action/admin/user/pdf','Generar reporte PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (60,'/action/admin/user/search','Motro de búsqueda para vista paginada',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (61,'/action/admin/user/update','Usuario - Actualizar Registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (62,'/action/admin/user/view','View Recordset in paged view',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (69,'/action/smn_seguridad/exit','Logout into smn_seguridad system',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (70,'/action/smn_seguridad/home','Main frameset',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (71,'/action/smn_seguridad/home/welcome','Página de bienvenida',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (72,'/action/smn_seguridad/loginhistory/form','Mis registros de acceso',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (73,'/action/smn_seguridad/loginhistory/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (74,'/action/smn_seguridad/loginhistory/search','Ejecutar consulta y enrutar dependiendo de que un recordsettenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (75,'/action/smn_seguridad/loginhistory/view','Ver resultado de consulta paginado',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (76,'/action/smn_seguridad/loginok','Redirect after sucessful login',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (77,'/action/smn_seguridad/menu','Display menu based on user roles',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (78,'/action/smn_seguridad/newpass/form','Cambiar contraseña',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (79,'/action/smn_seguridad/newpass/update','Save new password',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (80,'/action/smn_seguridad/profile/edit','Mis datos básicos',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (81,'/action/smn_seguridad/profile/update','Update record',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (83,'/action/admin/user/addnew2','Usuario- Insertar nuevo registro LDAP',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (84,'/action/admin/user/edit2','Usuario LDAP- Editar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (85,'/action/admin/user/editrediret','Redireccionar a un action de edit para usuarios sin LDAP o edit2 si el usuario es del LDAP',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (86,'/action/admin/user/insert2','Usuario LDAP - Insertar registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (87,'/action/admin/user/ldaptest','Recuperar los datos de un usuario de un directorio LDAP dado su Login',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (88,'/action/admin/user/update2','Usuario LDAP- Actualizar Registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (90,'/action/audit/consulta/excel','Exportar documento excel directo al browser',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (91,'/action/audit/consulta/form','Consulta de trazas',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (92,'/action/audit/consulta/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (93,'/action/audit/consulta/pdf','Generar reporte PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (95,'/action/audit/consulta/search','Ejecutar consulta usando un modulo de motor  de búsqueda y enrutar dependiendo de que un recordset  tenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (96,'/action/audit/consulta/view','Ver resultado de consulta paginado',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (97,'/action/audit/histograma/chart','Generar gráfico de operaciones por usuario  usando recordsets almacenados en memoria',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (98,'/action/audit/histograma/form','Histograma de operaciones',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (99,'/action/audit/histograma/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (100,'/action/audit/histograma/pdf','Generar reporte PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (101,'/action/audit/histograma/search','Ejecutar consulta por operacion de usuario y enrutar dependiendo de que un recordset  tenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (102,'/action/audit/histograma/view','Ver resultado de la consulta en graficos',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (103,'/action/sessions/excel','Exportar documento excel directo al browser',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (104,'/action/sessions/form','Sesiones activas',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (105,'/action/sessions/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (106,'/action/sessions/pdf','Generar reporte generico PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (107,'/action/sessions/search','Ejecutar consulta y enrutar dependiendo de que un recordset  tenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (108,'/action/sessions/view','Ver resultado de consulta paginado',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (109,'/action/smn_seguridad/loginhistory/excel','Exportar documento excel directo al browser',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (110,'/action/smn_seguridad/loginhistory/pdf','Generar reporte generico PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (111,'/action/loginconsulta/excel','Exportar documento excel directo al browser',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (112,'/action/loginconsulta/form','Consulta de logins por usuario',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (113,'/action/loginconsulta/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (114,'/action/loginconsulta/pdf','Generar reporte generico PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (115,'/action/loginconsulta/pick/usuarios','Desplegar picklist de clientes',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (116,'/action/loginconsulta/search','Ejecutar consulta usando un modulo de motor  de búsqueda y enrutar dependiendo de que un recordset  tenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (117,'/action/loginconsulta/view','Ver resultado de consulta paginado',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (118,'/action/audit/consulta/pick/user/form','Pagina de inicio',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (119,'/action/audit/consulta/pick/user/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (120,'/action/audit/consulta/pick/user/search','Ejecutar consulta y enrutar dependiendo de que un recordset  tenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (121,'/action/audit/consulta/pick/user/view','Ver resultado de la consulta',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (122,'/action/loginconsulta/pick/user/form','Pagina de inicio',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (123,'/action/loginconsulta/pick/user/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (124,'/action/loginconsulta/pick/user/search','Ejecutar consulta y enrutar dependiendo de que un recordset  tenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (125,'/action/loginconsulta/pick/user/view','Ver resultado de la consulta',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (126,'/action/loginfallido/excel','Exportar documento excel directo al browser',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (127,'/action/loginfallido/form','Consulta de Login fallidos',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (128,'/action/loginfallido/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (129,'/action/loginfallido/pdf','Generar reporte PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (130,'/action/loginfallido/search','Ejecutar consulta usando un modulo de motor  de búsqueda y enrutar dependiendo de que un recordset  tenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (131,'/action/loginfallido/view','Ver resultado de consulta paginado',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (132,'/action/admin/role/pdfeje','Generar reporte PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (133,'/action/admin/role/pdfsinasocia','Generar reporte PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (134,'/action/smn_seguridad/home/panel/hgrid','Crea HGrid de los documentos cargados',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (135,'/action/smn_seguridad/home/panel/view','Obtener query con path de imagenes',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (136,'/action/sort','Ordenar un recordset (en grids paginados Ajax)',1); 
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (137,'/action/admin/export/form','Exportar Script de Seguridad',1); 
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (138,'/action/admin/export/generatepgsql','Generar script',1); 
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (139,'/action/admin/export/generateoracle','Generar script',1); 
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (140,'/action/admin/app/modular','Mostrar un reporte de tipo parentchild con tablas anidadas',1); 
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (141,'/action/admin/app/modular/pdf','Mostrar un reporte de tipo parentchild con tablas anidadas',1); 
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (142,'/action/admin/panel/delete','Eliminar registro de una tabla',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (143,'/action/admin/panel/edit','Leer registro y retornar javascript que llenaun formulario con los datos del registro',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (144,'/action/admin/panel/excel','Exportar documento excel directo al browser',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (145,'/action/admin/panel/form','Panel',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (146,'/action/admin/panel/getpanel/form','Panel',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (147,'/action/admin/panel/getpanel/hgrid','Crea HGrid de los documentos cargados',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (148,'/action/admin/panel/getpanel/view','Obtener query con path de imagenes',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (149,'/action/admin/panel/insert','Insertar valores de un formulario en una tabla',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (150,'/action/admin/panel/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (151,'/action/admin/panel/pdf','Generar reporte generico PDF',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (152,'/action/admin/panel/picklist/imagen/dialog','Show form validation errors',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (153,'/action/admin/panel/picklist/imagen/form','Filtro de búsqueda del picklist de selección simple',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (154,'/action/admin/panel/picklist/imagen/hgrid','Crea HGrid de los documentos cargados',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (155,'/action/admin/panel/picklist/imagen/notfound','Mensaje que aparece cuando no encuentra data',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (156,'/action/admin/panel/picklist/imagen/search','Ejecutar consulta y enrutar dependiendo de que un recordsettenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (157,'/action/admin/panel/picklist/imagen/view','Ver resultado de consulta paginado',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (158,'/action/admin/panel/search','Ejecutar consulta y enrutar dependiendo de que un recordsettenga o no registros',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (159,'/action/admin/panel/update','Actualiza valores de un formulario en una tabla',1);
INSERT INTO smn_seguridad.s_service (service_id,path,description,app_id) VALUES (160,'/action/admin/panel/view','Ver resultado de consulta paginado',1);

insert into smn_seguridad.s_service_role (service_role_id, service_id, role_id)
select nextval('smn_seguridad.seq_service_role'), service_id, 1 from smn_seguridad.s_service where app_id = 1
;

insert into smn_seguridad.s_menu
(menu_id, app_id, title, position)
values
(1, 1, 'Administrador de Seguridad', 1)
;

insert into smn_seguridad.s_menu
(menu_id, app_id, title, position)
values
(2, 1, 'Mi Seguridad', 10)
;

insert into smn_seguridad.s_menu
(menu_id, app_id, title, position)
values
(3, 1, 'Auditoria', 2)
;


insert into smn_seguridad.s_menu_role
(menu_role_id, menu_id, role_id)
values
(1, 1, 1)
;

insert into smn_seguridad.s_menu_role
(menu_role_id, menu_id, role_id)
values
(2, 2, 1)
;

insert into smn_seguridad.s_menu_role
(menu_role_id, menu_id, role_id)
values
(3, 3, 1)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(1, 52, 1, 1)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(2, 42, 1, 2)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(3, 24, 1, 3)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(4, 39, 1, 4)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(5, 10, 1, 5)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(6, 7, 1, 6)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(15, 137, 1, 8)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(7, 80, 2, 1)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(8, 78, 2, 2)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(9, 72, 2, 3)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(10, 91, 3, 1)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(11, 98, 3, 2)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(13, 112, 3, 3)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(14, 127, 3, 4)
;

insert into smn_seguridad.s_menu_item
(menu_item_id, service_id, menu_id, position)
values
(12, 104, 1, 7)
;

INSERT INTO smn_seguridad.s_panel (panel_id, orden, icon_path, service_id, app_id) VALUES (1, 1, '/images/panel/user.gif', 52, 1);
INSERT INTO smn_seguridad.s_panel (panel_id, orden, icon_path, service_id, app_id) VALUES (2, 2, '/images/panel/menus.gif', 7, 1);
INSERT INTO smn_seguridad.s_panel (panel_id, orden, icon_path, service_id, app_id) VALUES (3, 3, '/images/panel/roles.gif', 39, 1);
INSERT INTO smn_seguridad.s_panel (panel_id, orden, icon_path, service_id, app_id) VALUES (4, 4, '/images/panel/servicios.gif', 42, 1);
INSERT INTO smn_seguridad.s_panel (panel_id, orden, icon_path, service_id, app_id) VALUES (5, 5, '/images/panel/seguimiento.gif', 91, 1);
INSERT INTO smn_seguridad.s_panel (panel_id, orden, icon_path, service_id, app_id) VALUES (6, 6, '/images/panel/sesiones.gif', 104, 1);
