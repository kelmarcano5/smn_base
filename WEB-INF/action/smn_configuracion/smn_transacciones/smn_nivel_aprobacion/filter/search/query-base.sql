select
	(select smn_base.smn_configuracion_estructura.coe_codigo|| ' - ' || smn_base.smn_configuracion_estructura.coe_nombre from  smn_base.smn_configuracion_estructura where smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id is not null  and smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id=smn_base.smn_nivel_aprobacion.smn_configuracion_estructura_id) as smn_configuracion_estructura_id_combo,
	case
		when smn_base.smn_nivel_aprobacion.nap_rol='RE' then '${lbl:b_recorder}'
		when smn_base.smn_nivel_aprobacion.nap_rol='VF' then '${lbl:b_checker}'
		when smn_base.smn_nivel_aprobacion.nap_rol='AP' then '${lbl:b_approver}'
	end as nap_rol_combo,
	smn_base.smn_nivel_aprobacion.smn_configuracion_estructura_id,
	smn_base.smn_nivel_aprobacion.nap_codigo,
	smn_base.smn_nivel_aprobacion.nap_descripcion,
	smn_base.smn_nivel_aprobacion.nap_rol,
	smn_base.smn_nivel_aprobacion.nap_secuencia_aprobacion,
	smn_base.smn_nivel_aprobacion.nap_fecha_registro,
	smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id

from 
	smn_base.smn_nivel_aprobacion

where
	smn_nivel_aprobacion_id is not null
	${filter}
order by
		smn_nivel_aprobacion_id
