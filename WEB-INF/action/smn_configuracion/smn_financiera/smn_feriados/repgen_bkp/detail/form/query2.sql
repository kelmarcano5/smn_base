select
		smn_base.smn_feriados.fer_codigo,
	smn_base.smn_feriados.fer_descripcion,
	smn_base.smn_feriados.fer_pais,
	smn_base.smn_feriados.fer_entidad_federal,
	smn_base.smn_feriados.fer_feriado,
	smn_base.smn_feriados.fer_fecha_registro
from
	smn_base.smn_feriados 
where
	smn_base.smn_feriados.smn_feriados_id = ${fld:id}
