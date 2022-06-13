select
	smn_base.smn_rel_aux_contacto.smn_rel_aux_contacto_id,
	smn_base.smn_auxiliar.smn_auxiliar_id,
	smn_base.smn_auxiliar.aux_tipo_persona as aux_tipo_persona_pl0,
	smn_base.smn_rel_aux_contacto.smn_auxiliar_contacto_id
from
	smn_base.smn_auxiliar,
	smn_base.smn_rel_aux_contacto
where
	smn_base.smn_auxiliar.smn_auxiliar_id=smn_base.smn_rel_aux_contacto.smn_auxiliar_id
	and
	smn_rel_aux_contacto_id = ${fld:id}
