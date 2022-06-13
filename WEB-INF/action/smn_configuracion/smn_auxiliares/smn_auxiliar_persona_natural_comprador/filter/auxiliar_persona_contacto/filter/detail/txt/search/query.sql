select
		smn_base.smn_auxiliar_persona_contacto.smn_auxiliar_persona_contacto_id,
	smn_base.smn_auxiliar.aux_codigo||'-'||smn_base.smn_auxiliar.aux_descripcion as smn_auxiliar_rf,
	smn_base.smn_clase_auxiliar.cla_codigo||'-'||smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_auxiliar_persona_contacto.apc_apellidos,
	smn_base.smn_auxiliar_persona_contacto.apc_nombres,
	smn_base.smn_auxiliar_persona_contacto.apc_telefono_contacto,
	smn_base.smn_auxiliar_persona_contacto.apc_fecha_registro
	
from
	smn_base.smn_auxiliar_persona_contacto
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id=smn_base.smn_auxiliar_persona_contacto.smn_auxiliar_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_auxiliar_persona_contacto.smn_clase_auxiliar_rf


where
	smn_auxiliar_persona_contacto_id = ${fld:id}
