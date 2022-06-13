select
		smn_base.smn_rel_aux_contacto.smn_rel_aux_contacto_id,
	smn_base.smn_auxiliar.aux_codigo||'-'||smn_base.smn_auxiliar.aux_descripcion as smn_auxiliar_id,
	smn_base.smn_auxiliar.aux_tipo_persona as aux_tipo_persona_pl0,
	smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id as id, smn_base.smn_auxiliar_contacto.acn_usuario|| ' - ' ||smn_base.smn_auxiliar_contacto.acn_email as smn_auxiliar_contacto_id
from
	smn_base.smn_auxiliar,
	smn_base.smn_auxiliar_contacto,
	smn_base.smn_rel_aux_contacto
where
	smn_base.smn_auxiliar.smn_auxiliar_id=smn_base.smn_rel_aux_contacto.smn_auxiliar_id
