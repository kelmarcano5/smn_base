select	
	case
		when smn_base.smn_feriados.fer_laborable='S' then '${lbl:b_yes}'
		when smn_base.smn_feriados.fer_laborable='N' then '${lbl:b_not}'
	end as fer_laborable_combo,
	smn_base.smn_feriados.fer_codigo,
	smn_base.smn_feriados.fer_descripcion,
	smn_base.smn_feriados.fer_pais,
	smn_base.smn_feriados.fer_entidad_federal,
	smn_base.smn_feriados.fer_ciudad,
	smn_base.smn_feriados.fer_municipio,
	smn_base.smn_feriados.fer_feriado,
	smn_base.smn_feriados.fer_laborable,
	smn_base.smn_feriados.fer_fecha_registro,
	smn_base.smn_feriados.smn_feriados_id
from
	smn_base.smn_feriados
where
	smn_base.smn_feriados.smn_feriados_id is not null	
 	${filter}
order by 
	smn_base.smn_feriados.smn_feriados_id desc