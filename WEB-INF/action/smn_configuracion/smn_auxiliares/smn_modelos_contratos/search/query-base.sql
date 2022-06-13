select	
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_modelos_contratos.smn_modelos_contratos_id,
	smn_base.smn_modelos_contratos.mct_modulo,
	smn_base.smn_modelos_contratos.mct_archivo,
	smn_base.smn_modelos_contratos.mct_contenido,
	smn_base.smn_modelos_contratos.mct_descripcion,
	smn_base.smn_modelos_contratos.mct_tamano,
	smn_base.smn_modelos_contratos.mct_idioma,
	smn_base.smn_modelos_contratos.mct_usuario,
	smn_base.smn_modelos_contratos.mct_fecha_registro,
	smn_base.smn_modelos_contratos.mct_hora
from
	smn_base.smn_modelos_contratos,
	smn_base.smn_modulos
where
	smn_base.smn_modelos_contratos.smn_modelos_contratos_id is not null
and
	smn_base.smn_modelos_contratos.mct_modulo=smn_base.smn_modulos.smn_modulos_id
${filter}
order by 
	smn_modelos_contratos_id