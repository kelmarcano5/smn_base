select
		smn_base.smn_nivel_aprobacion.smn_configuracion_estructura_id,
	smn_base.smn_nivel_aprobacion.nap_codigo,
	smn_base.smn_nivel_aprobacion.nap_descripcion,
	smn_base.smn_nivel_aprobacion.nap_rol,
	smn_base.smn_nivel_aprobacion.nap_secuencia_aprobacion,
	smn_base.smn_nivel_aprobacion.nap_fecha_registro
from
	smn_base.smn_nivel_aprobacion 
where
	smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id = ${fld:id}
