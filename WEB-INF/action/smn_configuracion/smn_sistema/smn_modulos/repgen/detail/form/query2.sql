select
		smn_base.smn_modulos.mod_empresa,
	smn_base.smn_modulos.mod_codigo,
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_modulos.mod_fecha_registro,
	smn_base.smn_modulos.mod_empresa,
	smn_base.smn_modulos.mod_codigo,
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_modulos.mod_fecha_registro,
	smn_base.smn_modulos.mod_empresa,
	smn_base.smn_modulos.mod_codigo,
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_modulos.mod_fecha_registro
from
	smn_base.smn_modulos 
where
	smn_base.smn_modulos.smn_modulos_id = ${fld:id}
