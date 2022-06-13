select	
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
	smn_base.smn_modelos_contratos 
where
	smn_modelos_contratos_id is not null

${filter}
order by 
	smn_modelos_contratos_id