select
	smn_base.smn_contactos.smn_contactos_id,
	smn_base.smn_contactos.cnt_nombres,
	smn_base.smn_contactos.cnt_apellidos,
	smn_base.smn_contactos.cnt_email,
	smn_base.smn_auxiliar.aux_descripcion as smn_auxiliar_id,
	smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	tp1.tco_descripcion as smn_tipo_contactos_rf,
	smn_base.smn_contactos.cnt_descripcion,
	tp2.tco_descripcion as smn_tipo_contactos_rf1,
	smn_base.smn_contactos.cnt_descripcion1,
	smn_base.smn_contactos.cnt_telefono_contacto,
	smn_base.smn_contactos.cnt_fecha_registro
	
from
	smn_base.smn_contactos
	inner join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id = smn_base.smn_contactos.smn_auxiliar_id
	inner join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_contactos.smn_clase_auxiliar_rf
	inner join smn_base.smn_tipo_contactos tp1 on tp1.smn_tipo_contactos_id = smn_base.smn_contactos.smn_tipo_contactos_rf
	left join smn_base.smn_tipo_contactos tp2 on tp2.smn_tipo_contactos_id = smn_base.smn_contactos.smn_tipo_contactos_rf
where
	smn_contactos_id is not null and smn_base.smn_contactos.smn_auxiliar_id = ${fld:id2} 
	${filter}
order by
		smn_contactos_id
