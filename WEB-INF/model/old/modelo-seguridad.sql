create sequence smn_seguridad.seq_admin start 1;
create sequence smn_seguridad.seq_menu_item start 500;
create sequence smn_seguridad.seq_loginlog start 500;
create sequence smn_seguridad.seq_passlog start 500;
create sequence smn_seguridad.seq_user_role start 500;
create sequence smn_seguridad.seq_service_role start 500;
create sequence smn_seguridad.seq_menu_role start 500;
create sequence smn_seguridad.seq_menu start 500;
create sequence smn_seguridad.seq_role start 500;
create sequence smn_seguridad.seq_service start 500;
create sequence smn_seguridad.seq_application start 500;
create sequence smn_seguridad.seq_login_failed start 500;
create sequence smn_seguridad.seq_user start 500;
create sequence smn_seguridad.seq_session start 1;
create sequence smn_seguridad.seq_auditlog start 1;
create sequence smn_seguridad.seq_s_panel start 100;

CREATE TABLE smn_seguridad.s_user (
       user_id INTEGER NOT NULL
     , userlogin VARCHAR(25) NOT NULL
     , passwd VARCHAR(50)
     , lname VARCHAR(25)
     , fname VARCHAR(25)
     , email VARCHAR(80)
     , enabled INTEGER
     , pwd_policy INTEGER
     , force_newpass INTEGER
     , locale VARCHAR(2)
     , is_ldap INTEGER
     , dn VARCHAR(1000)
     , direccion_ip VARCHAR(20)
     , PRIMARY KEY (user_id)
);
COMMENT ON TABLE smn_seguridad.s_user IS 'Usuarios del sistema, son comunes a todas las aplicaciones';
COMMENT ON COLUMN smn_seguridad.s_user.user_id IS 'ID del usuario';
COMMENT ON COLUMN smn_seguridad.s_user.userlogin IS 'Login o identificador';
COMMENT ON COLUMN smn_seguridad.s_user.passwd IS 'Contraseña, se almacena como un hash en MD5 o SHA1';
COMMENT ON COLUMN smn_seguridad.s_user.lname IS 'Apellidos';
COMMENT ON COLUMN smn_seguridad.s_user.fname IS 'Nombres';
COMMENT ON COLUMN smn_seguridad.s_user.email IS 'Email';
COMMENT ON COLUMN smn_seguridad.s_user.enabled IS 'Activo o inactivo: 0=inactivo o bloqueado, 1=activo';
COMMENT ON COLUMN smn_seguridad.s_user.pwd_policy IS 'Política de password: -2= usar la política de la aplicación, -1= nunca expira, N=dias que dura el password antes de forzar el cambio';
COMMENT ON COLUMN smn_seguridad.s_user.force_newpass IS 'Forzar cambio de password en el siguiente login: 0 or NULL=No, 1=Yes';
COMMENT ON COLUMN smn_seguridad.s_user.locale IS 'Código de idioma preferido por este usuario, puede ser es, en, etc.';
COMMENT ON COLUMN smn_seguridad.s_user.is_ldap IS 'Flag que permite saber que usuarios son del LDAP y cuales fueron creados sin la interaccion con el LDAP. null=No LDAP, 1=Con LDAP';
COMMENT ON COLUMN smn_seguridad.s_user.dn IS 'DN para hacer login en un directorio LDAP';
COMMENT ON COLUMN smn_seguridad.s_user.direccion_ip IS 'Dirección IP remota de la computadora que realiza el login.';
CREATE UNIQUE INDEX IX_s_user_1 ON smn_seguridad.s_user (userlogin);

CREATE TABLE smn_seguridad.s_login_failed (
       login_failed_id INTEGER NOT NULL
     , userlogin VARCHAR(25) NOT NULL
     , login_date DATE NOT NULL
     , login_time VARCHAR(15) NOT NULL
     , remote_addr VARCHAR(25) NOT NULL
     , context VARCHAR(30) NOT NULL
     , PRIMARY KEY (login_failed_id)
);
COMMENT ON TABLE smn_seguridad.s_login_failed IS 'Registra los intentos fallidos de login';
COMMENT ON COLUMN smn_seguridad.s_login_failed.login_failed_id IS 'ID del registro';
COMMENT ON COLUMN smn_seguridad.s_login_failed.userlogin IS 'Login de usuario utilizado';
COMMENT ON COLUMN smn_seguridad.s_login_failed.login_date IS 'Fecha del intento fallido de login';
COMMENT ON COLUMN smn_seguridad.s_login_failed.login_time IS 'Hora del intento fallido de login';
COMMENT ON COLUMN smn_seguridad.s_login_failed.remote_addr IS 'Direccion IP desde donde se intentó el login';
COMMENT ON COLUMN smn_seguridad.s_login_failed.context IS 'Aplicación web o contexto al cual se intentó ingresar';
CREATE INDEX IX_login_failed_1 ON smn_seguridad.s_login_failed (userlogin);
CREATE INDEX IX_login_failed_2 ON smn_seguridad.s_login_failed (login_date);

CREATE TABLE smn_seguridad.s_application (
       app_id INTEGER NOT NULL
     , app_alias VARCHAR(20) NOT NULL
     , description VARCHAR(80) NOT NULL
     , pwd_policy INTEGER NOT NULL
     , PRIMARY KEY (app_id)
);
COMMENT ON TABLE smn_seguridad.s_application IS 'Representa una aplicación web o contexto';
COMMENT ON COLUMN smn_seguridad.s_application.app_id IS 'ID de la aplicación';
COMMENT ON COLUMN smn_seguridad.s_application.app_alias IS 'Alias utilizado por el filtro de seguridad para leer la configuración de esta aplicación';
COMMENT ON COLUMN smn_seguridad.s_application.description IS 'Descripción de la aplicación';
COMMENT ON COLUMN smn_seguridad.s_application.pwd_policy IS 'Política de vencimiento de password: -1=nunca expira, N=dias que dura un password antes de forzar su cambio';
CREATE UNIQUE INDEX IX_s_application_1 ON smn_seguridad.s_application (app_alias);

CREATE TABLE smn_seguridad.s_service (
       service_id INTEGER NOT NULL
     , path VARCHAR(150) NOT NULL
     , description VARCHAR(350) NOT NULL
     , app_id INTEGER NOT NULL
     , PRIMARY KEY (service_id)
     , CONSTRAINT UQ_s_service_1 UNIQUE (path, app_id)
     , CONSTRAINT FK_s_service_2 FOREIGN KEY (app_id)
                  REFERENCES smn_seguridad.s_application (app_id) ON DELETE CASCADE
);
COMMENT ON TABLE smn_seguridad.s_service IS 'Servicios o acciones protegidas de una aplicación';
COMMENT ON COLUMN smn_seguridad.s_service.service_id IS 'ID del servicio';
COMMENT ON COLUMN smn_seguridad.s_service.path IS 'Ruta del Action, debe comenzar por /action/...';
COMMENT ON COLUMN smn_seguridad.s_service.description IS 'Descripción que se usa si el servicio pertenece a un Menú';
COMMENT ON COLUMN smn_seguridad.s_service.app_id IS 'ID de la aplicación a la cual pertenece';
CREATE INDEX IX_s_service_1 ON smn_seguridad.s_service (app_id);

CREATE TABLE smn_seguridad.s_role (
       role_id INTEGER NOT NULL
     , app_id INTEGER NOT NULL
     , rolename VARCHAR(30) NOT NULL
     , description VARCHAR(80)
     , PRIMARY KEY (role_id)
     , CONSTRAINT UQ_s_role_1 UNIQUE (app_id, rolename)
     , CONSTRAINT FK_s_role_1 FOREIGN KEY (app_id)
                  REFERENCES smn_seguridad.s_application (app_id) ON DELETE CASCADE
);
COMMENT ON TABLE smn_seguridad.s_role IS 'Roles de seguridad por aplicación';
COMMENT ON COLUMN smn_seguridad.s_role.role_id IS 'ID del registro';
COMMENT ON COLUMN smn_seguridad.s_role.app_id IS 'ID de la aplicación a la cual pertenece el rol';
COMMENT ON COLUMN smn_seguridad.s_role.rolename IS 'Nombre corto del rol, como admin, user, etc';
COMMENT ON COLUMN smn_seguridad.s_role.description IS 'Descripción del rol, su uso general';
CREATE INDEX IX_s_role_1 ON smn_seguridad.s_role (app_id);

CREATE TABLE smn_seguridad.s_menu (
       menu_id INTEGER NOT NULL
     , app_id INTEGER NOT NULL
     , title VARCHAR(100)
     , position INTEGER
     , master_menu_id INTEGER
     , PRIMARY KEY (menu_id)
     , CONSTRAINT FK_s_menu_1 FOREIGN KEY (app_id)
                  REFERENCES smn_seguridad.s_application (app_id) ON DELETE CASCADE
);
COMMENT ON TABLE smn_seguridad.s_menu IS 'Menú de la aplicación, almacena los títulos del menú';
COMMENT ON COLUMN smn_seguridad.s_menu.menu_id IS 'ID del registro';
COMMENT ON COLUMN smn_seguridad.s_menu.app_id IS 'ID de la aplicación a la que pertenece el menú';
COMMENT ON COLUMN smn_seguridad.s_menu.title IS 'Título del menú, así aparecerá en la página web';
COMMENT ON COLUMN smn_seguridad.s_menu.position IS 'Orden de aparición, ascendente';
COMMENT ON COLUMN smn_seguridad.s_menu.master_menu_id IS 'ID del menu padre';
CREATE INDEX IX_s_menu_1 ON smn_seguridad.s_menu (app_id);
CREATE INDEX IX_s_menu_2 ON smn_seguridad.s_menu (master_menu_id);

CREATE TABLE smn_seguridad.s_menu_role (
       menu_role_id INTEGER NOT NULL
     , menu_id INTEGER NOT NULL
     , role_id INTEGER NOT NULL
     , PRIMARY KEY (menu_role_id)
     , CONSTRAINT FK_s_menu_role_1 FOREIGN KEY (menu_id)
                  REFERENCES smn_seguridad.s_menu (menu_id) ON DELETE CASCADE
     , CONSTRAINT FK_s_menu_role_2 FOREIGN KEY (role_id)
                  REFERENCES smn_seguridad.s_role (role_id) ON DELETE CASCADE
);
COMMENT ON TABLE smn_seguridad.s_menu_role IS 'Roles que pueden acceder a un menu, relaciona los roles con los menus';
COMMENT ON COLUMN smn_seguridad.s_menu_role.menu_role_id IS 'ID del registro';
COMMENT ON COLUMN smn_seguridad.s_menu_role.menu_id IS 'ID del menu';
COMMENT ON COLUMN smn_seguridad.s_menu_role.role_id IS 'ID del rol';
CREATE INDEX IX_s_menu_role_1 ON smn_seguridad.s_menu_role (menu_id);
CREATE INDEX IX_s_menu_role_2 ON smn_seguridad.s_menu_role (role_id);

CREATE TABLE smn_seguridad.s_service_role (
       service_role_id INTEGER NOT NULL
     , service_id INTEGER NOT NULL
     , role_id INTEGER NOT NULL
     , PRIMARY KEY (service_role_id)
     , CONSTRAINT FK_s_service_role_1 FOREIGN KEY (service_id)
                  REFERENCES smn_seguridad.s_service (service_id) ON DELETE CASCADE
     , CONSTRAINT FK_s_service_role_2 FOREIGN KEY (role_id)
                  REFERENCES smn_seguridad.s_role (role_id) ON DELETE CASCADE
);
COMMENT ON TABLE smn_seguridad.s_service_role IS 'Roles que pueden ejecutar un servicio o Action';
COMMENT ON COLUMN smn_seguridad.s_service_role.service_role_id IS 'ID del registro';
COMMENT ON COLUMN smn_seguridad.s_service_role.service_id IS 'ID del servicio al cual se autoriza en acceso';
COMMENT ON COLUMN smn_seguridad.s_service_role.role_id IS 'ID del rol autorizado';
CREATE INDEX IX_s_service_role_1 ON smn_seguridad.s_service_role (service_id);
CREATE INDEX IX_s_service_role_2 ON smn_seguridad.s_service_role (role_id);

CREATE TABLE smn_seguridad.s_user_role (
       user_role_id INTEGER NOT NULL
     , user_id INTEGER NOT NULL
     , role_id INTEGER NOT NULL
     , PRIMARY KEY (user_role_id)
     , CONSTRAINT FK_s_user_role_1 FOREIGN KEY (user_id)
                  REFERENCES smn_seguridad.s_user (user_id) ON DELETE CASCADE
     , CONSTRAINT FK_s_user_role_2 FOREIGN KEY (role_id)
                  REFERENCES smn_seguridad.s_role (role_id) ON DELETE CASCADE
);
COMMENT ON TABLE smn_seguridad.s_user_role IS 'Relaciona los roles de seguridad con los usuarios; indica los roles que tiene un usuario';
COMMENT ON COLUMN smn_seguridad.s_user_role.user_role_id IS 'ID del registro';
COMMENT ON COLUMN smn_seguridad.s_user_role.user_id IS 'ID del usuario que tiene el rol';
COMMENT ON COLUMN smn_seguridad.s_user_role.role_id IS 'ID del rol asignado al usuario';
CREATE INDEX IX_s_user_role_1 ON smn_seguridad.s_user_role (user_id);
CREATE INDEX IX_s_user_role_2 ON smn_seguridad.s_user_role (role_id);

CREATE TABLE smn_seguridad.s_passlog (
       passlog_id INTEGER NOT NULL
     , last_change DATE NOT NULL
     , hash VARCHAR(50) NOT NULL
     , user_id INTEGER NOT NULL
     , PRIMARY KEY (passlog_id)
     , CONSTRAINT FK_s_passlog_1 FOREIGN KEY (user_id)
                  REFERENCES smn_seguridad.s_user (user_id) ON DELETE CASCADE
);
COMMENT ON TABLE smn_seguridad.s_passlog IS 'Almacena historial de los passwords utilizados por cada usuario, para evitar la repeticion. Solo almacena el HASH (MD5 o SHA-1) del password';
COMMENT ON COLUMN smn_seguridad.s_passlog.passlog_id IS 'ID del registro';
COMMENT ON COLUMN smn_seguridad.s_passlog.last_change IS 'Fecha de asignación de este password';
COMMENT ON COLUMN smn_seguridad.s_passlog.hash IS 'HASH md5 o sha1 del password';
COMMENT ON COLUMN smn_seguridad.s_passlog.user_id IS 'ID del usuario al cual pertenece este password';
CREATE INDEX IX_s_passlog_1 ON smn_seguridad.s_passlog (last_change);
CREATE INDEX IX_s_passlog_2 ON smn_seguridad.s_passlog (user_id);

CREATE TABLE smn_seguridad.s_loginlog (
       loginlog_id INTEGER NOT NULL
     , login_date DATE NOT NULL
     , login_time VARCHAR(15) NOT NULL
     , remote_addr VARCHAR(25) NOT NULL
     , context VARCHAR(30) NOT NULL
     , user_id INTEGER NOT NULL
     , PRIMARY KEY (loginlog_id)
     , CONSTRAINT FK_s_loginlog_1 FOREIGN KEY (user_id)
                  REFERENCES smn_seguridad.s_user (user_id) ON DELETE CASCADE
);
COMMENT ON TABLE smn_seguridad.s_loginlog IS 'Histórico de logins o ingresos del usuario a las distintas aplicaciones';
COMMENT ON COLUMN smn_seguridad.s_loginlog.loginlog_id IS 'ID del registro';
COMMENT ON COLUMN smn_seguridad.s_loginlog.login_date IS 'Fecha del login';
COMMENT ON COLUMN smn_seguridad.s_loginlog.login_time IS 'Hora del login en formato 24hrs';
COMMENT ON COLUMN smn_seguridad.s_loginlog.remote_addr IS 'IP remota desde donde se hizo el login';
COMMENT ON COLUMN smn_seguridad.s_loginlog.context IS 'Contexto o aplicación web a la cual se hizo login';
COMMENT ON COLUMN smn_seguridad.s_loginlog.user_id IS 'ID del usuario que hizo el login';
CREATE INDEX IX_s_loginlog_1 ON smn_seguridad.s_loginlog (user_id);


CREATE TABLE smn_seguridad.s_menu_item (
       menu_item_id INTEGER NOT NULL
     , service_id INTEGER NOT NULL
     , menu_id INTEGER NOT NULL
     , position INTEGER
     , PRIMARY KEY (menu_item_id)
     , CONSTRAINT FK_s_menu_item_1 FOREIGN KEY (service_id)
                  REFERENCES smn_seguridad.s_service (service_id) ON DELETE CASCADE
     , CONSTRAINT FK_s_menu_item_2 FOREIGN KEY (menu_id)
                  REFERENCES smn_seguridad.s_menu (menu_id) ON DELETE CASCADE
);
COMMENT ON TABLE smn_seguridad.s_menu_item IS 'Items o comandos de un menú, cada uno corresponde a un Action';
COMMENT ON COLUMN smn_seguridad.s_menu_item.menu_item_id IS 'ID del registro';
COMMENT ON COLUMN smn_seguridad.s_menu_item.service_id IS 'ID del servicio o Action que invoca este comando';
COMMENT ON COLUMN smn_seguridad.s_menu_item.menu_id IS 'ID del menú al cual pertenece';
COMMENT ON COLUMN smn_seguridad.s_menu_item.position IS 'Orden de aparicion ascendente';
CREATE INDEX IX_s_menu_item_1 ON smn_seguridad.s_menu_item (service_id);
CREATE INDEX IX_s_menu_item_2 ON smn_seguridad.s_menu_item (menu_id);

CREATE TABLE smn_seguridad.s_session
(
  session_id integer NOT NULL, 
  jsessionid VARCHAR(100) NOT NULL,
  login_date date NOT NULL,
  login_time VARCHAR(15) NOT NULL,
  remote_addr VARCHAR(25) NOT NULL,
  context_alias VARCHAR(30) NOT NULL,
  userlogin VARCHAR(25) NOT NULL,
  CONSTRAINT s_session_pkey PRIMARY KEY (session_id)
);
COMMENT ON TABLE smn_seguridad.s_session IS 'Registra las sesiones de los usuarios a la aplicación';
COMMENT ON COLUMN smn_seguridad.s_session.session_id IS 'Clave primaria de la tabla';
COMMENT ON COLUMN smn_seguridad.s_session.jsessionid IS 'Cookie de sesion J2EE';
COMMENT ON COLUMN smn_seguridad.s_session.login_date IS 'Fecha cuando se realizo el login';
COMMENT ON COLUMN smn_seguridad.s_session.login_time IS 'Hora en la que se realizo el login';
COMMENT ON COLUMN smn_seguridad.s_session.remote_addr IS 'Direccion IP remota de donde se realizo el login';
COMMENT ON COLUMN smn_seguridad.s_session.context_alias IS 'Alias de seguridad del contexto o aplicación';
COMMENT ON COLUMN smn_seguridad.s_session.userlogin IS 'Login del usuario';
CREATE INDEX IX_context_alias ON smn_seguridad.s_session (context_alias);
CREATE INDEX IX_userlogin ON smn_seguridad.s_session (userlogin);
CREATE INDEX IX_jsessionid ON smn_seguridad.s_session (jsessionid);


CREATE TABLE smn_seguridad.s_auditlog
(
  auditlog_id bigint NOT NULL, -- ID del registro de auditoria
  operation character varying(50) NOT NULL, -- Operación realizada
  area character varying(50) NOT NULL, -- Descripción de la tabla afectada
  target_table character varying(50) NOT NULL, -- Nombre de la tabla
  userlogin character varying(25) NOT NULL, -- Identificación del Usuario
  extra_info character varying(1000) NOT NULL, -- Descripción de la operación realizada
  op_date date NOT NULL, -- Fecha de ejecución de la operación
  op_time character varying(15) NOT NULL, -- Hora de ejecución de la operación en formato 24hrs
  pkey integer NOT NULL, -- Clave primaria del registro
  context_alias character varying(20), -- Alias de seguridad del contexto o  aplicación web
  CONSTRAINT auditlog_pkey PRIMARY KEY (auditlog_id)
);

COMMENT ON TABLE smn_seguridad.s_auditlog IS 'Trazas de auditoria de operaciones sobre las tablas';
COMMENT ON COLUMN smn_seguridad.s_auditlog.auditlog_id IS 'ID del registro de auditoria';
COMMENT ON COLUMN smn_seguridad.s_auditlog.operation IS 'Operación realizada';
COMMENT ON COLUMN smn_seguridad.s_auditlog.area IS 'Descripción de la tabla afectada';
COMMENT ON COLUMN smn_seguridad.s_auditlog.target_table IS 'Nombre de la tabla';
COMMENT ON COLUMN smn_seguridad.s_auditlog.userlogin IS 'Identificación del Usuario';
COMMENT ON COLUMN smn_seguridad.s_auditlog.extra_info IS 'Descripción de la operación realizada';
COMMENT ON COLUMN smn_seguridad.s_auditlog.op_date IS 'Fecha de ejecución de la operación';
COMMENT ON COLUMN smn_seguridad.s_auditlog.op_time IS 'Hora de ejecución de la operación en formato 24hrs';
COMMENT ON COLUMN smn_seguridad.s_auditlog.pkey IS 'Clave primaria del registro';
COMMENT ON COLUMN smn_seguridad.s_auditlog.context_alias IS 'Alias de seguridad del contexto o  aplicación web';

CREATE INDEX auditlog_idx1 ON smn_seguridad.s_auditlog USING btree (op_date);


CREATE TABLE smn_seguridad.s_panel
(
  panel_id integer NOT NULL, -- Primary Key
  orden integer NOT NULL, -- Orden en que debe aparecer este icono en relacion a los demas
  icon_path character varying(200) NOT NULL, -- path de la imagen relativo al contexto, comienza com /images...
  service_id integer, -- ID del Action o servicio que se invoca cuando le dan click al icono
  app_id integer NOT NULL, -- ID de aplicación a la que pertenece este icono
  CONSTRAINT s_panel_pk PRIMARY KEY (panel_id),
  CONSTRAINT s_panel_fk1 FOREIGN KEY (service_id)
      REFERENCES smn_seguridad.s_service (service_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT s_panel_fk2 FOREIGN KEY (app_id)
      REFERENCES smn_seguridad.s_application (app_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
);


COMMENT ON TABLE smn_seguridad.s_panel IS 'Configuración del panel de control o iconos favoritos para las opciones mas utilizadas de una aplicación';
COMMENT ON COLUMN smn_seguridad.s_panel.panel_id IS 'Primary Key';
COMMENT ON COLUMN smn_seguridad.s_panel.orden IS 'Orden en que debe aparecer este icono en relacion a los demas';
COMMENT ON COLUMN smn_seguridad.s_panel.icon_path IS 'path de la imagen relativo al contexto, comienza com /images...';
COMMENT ON COLUMN smn_seguridad.s_panel.service_id IS 'ID del Action o servicio que se invoca cuando le dan click al icono';
COMMENT ON COLUMN smn_seguridad.s_panel.app_id IS 'ID de aplicación a la que pertenece este icono';


-- Index: smn_seguridad.s_panel_idx1

-- DROP INDEX smn_seguridad.s_panel_idx1;

CREATE INDEX s_panel_idx1
  ON smn_seguridad.s_panel
  USING btree
  (app_id);

ALTER TABLE smn_seguridad.s_auditlog ALTER target_table TYPE character varying(1000);
ALTER TABLE smn_seguridad.s_auditlog ALTER extra_info TYPE character varying(8000);
ALTER TABLE smn_seguridad.s_auditlog ALTER COLUMN pkey DROP NOT NULL;
ALTER TABLE smn_seguridad.s_auditlog ADD COLUMN recordcount integer;
COMMENT ON COLUMN smn_seguridad.s_auditlog.recordcount IS 'Cantidad de registros que retorno la consulta realizada';
ALTER TABLE smn_seguridad.s_auditlog ADD COLUMN remote_ip VARCHAR(40);
COMMENT ON COLUMN smn_seguridad.s_auditlog.remote_ip IS 'IP Remota';
