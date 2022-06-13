select
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_naturaleza_auxiliar.naa_nombre,
		smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id,
	smn_base.smn_clase_auxiliar.cla_codigo,
	smn_base.smn_clase_auxiliar.cla_nombre,
	smn_base.smn_clase_auxiliar.cla_modulo,
	smn_base.smn_clase_auxiliar.cla_naturaleza,
	smn_base.smn_clase_auxiliar.cla_fecha_registro
	
from

	smn_base.smn_modulos,
	smn_base.smn_naturaleza_auxiliar,
	smn_base.smn_clase_auxiliar
where
	smn_base.smn_modulos.smn_modulos_id = smn_base.smn_clase_auxiliar.cla_modulo and
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id = smn_base.smn_clase_auxiliar.cla_naturaleza
