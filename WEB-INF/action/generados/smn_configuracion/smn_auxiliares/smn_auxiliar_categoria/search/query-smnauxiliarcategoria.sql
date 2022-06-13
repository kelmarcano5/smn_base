select	
	case
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PN' then '${lbl:b_natural_person}'
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PJ' then '${lbl:b_legal_person}'
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='GO' then '${lbl:b_government_person}'
	end as aca_tipo_persona_combo,
	smn_base.smn_auxiliar_categoria.aca_naturaleza_auxiliar,
	smn_base.smn_auxiliar_categoria.aca_tipo_persona,
	smn_base.smn_auxiliar_categoria.aca_empresa,
	smn_base.smn_auxiliar_categoria.aca_sucursal,
	smn_base.smn_auxiliar_categoria.aca_unidad_negocio,
	smn_base.smn_auxiliar_categoria.aca_area_servicio,
	smn_base.smn_auxiliar_categoria.aca_unidad_servicio,
	smn_base.smn_auxiliar_categoria.aca_fecha_registro,
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id
from 
	smn_base.smn_auxiliar_categoria
order by 
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id desc