select	
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id, 
	smn_base.smn_auxiliar_categoria.aca_tipo_persona as aca_tipo_persona_pl0,
	smn_base.smn_auxiliar_tercero.*
from
	smn_base.smn_auxiliar_categoria,
	smn_base.smn_auxiliar_tercero 
where
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id and
	smn_auxiliar_tercero_id = ${fld:id} 
	


