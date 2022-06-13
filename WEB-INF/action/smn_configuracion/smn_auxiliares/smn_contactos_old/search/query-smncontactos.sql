select
	(select smn_base.smn_auxiliar.aux_codigo|| ' - ' || smn_base.smn_auxiliar.aux_descripcion from  smn_base.smn_auxiliar  where smn_base.smn_auxiliar.smn_auxiliar_id is not null  and smn_base.smn_auxiliar.smn_auxiliar_id=smn_base.smn_contactos.smn_auxiliar_id  order by aux_descripcion ) as smn_auxiliar_id_combo,
	(select smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar  where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_contactos.smn_clase_auxiliar_rf  order by cla_nombre ) as smn_clase_auxiliar_rf_combo,
	(select smn_base.smn_tipo_contactos.tco_descripcion from  smn_base.smn_tipo_contactos where smn_base.smn_tipo_contactos.smn_tipo_contactos_id is not null  and smn_base.smn_tipo_contactos.smn_tipo_contactos_id=smn_base.smn_contactos.smn_tipo_contactos_rf) as smn_tipo_contactos_rf_combo,
	(select smn_base.smn_tipo_contactos.tco_descripcion from  smn_base.smn_tipo_contactos where smn_base.smn_tipo_contactos.smn_tipo_contactos_id is not null  and smn_base.smn_tipo_contactos.smn_tipo_contactos_id=smn_base.smn_contactos.smn_tipo_contactos_rf1) as smn_tipo_contactos_rf1_combo,
	smn_base.smn_contactos.cnt_nombres,
	smn_base.smn_contactos.cnt_apellidos,
	smn_base.smn_contactos.cnt_email,
	smn_base.smn_contactos.smn_auxiliar_id,
	smn_base.smn_contactos.smn_clase_auxiliar_rf,
	smn_base.smn_contactos.smn_tipo_contactos_rf,
	smn_base.smn_contactos.cnt_descripcion,
	smn_base.smn_contactos.smn_tipo_contactos_rf1,
	smn_base.smn_contactos.cnt_descripcion1,
	smn_base.smn_contactos.cnt_telefono_contacto,
	smn_base.smn_contactos.cnt_fecha_registro

from 
	smn_base.smn_contactos
