select
		smn_base.smn_auxiliar_persona_contacto.apc_nombres
from
		smn_base.smn_auxiliar_persona_contacto
where
		upper(smn_base.smn_auxiliar_persona_contacto.apc_nombres) = upper(${fld:apc_nombres})
