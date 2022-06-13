select
	smn_base.smn_auxiliar_persona_natural.ant_apellidos,
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_parentezco.ptz_descripcion,
	case
	when smn_base.smn_afiliaciones.afc_es_titular='S' then '${lbl:b_yes}'
	when smn_base.smn_afiliaciones.afc_es_titular='N' then '${lbl:b_not}'
	end as afc_es_titular_combo,
	smn_base.smn_afiliaciones.*
from
	smn_base.smn_afiliaciones
	inner join smn_base.smn_auxiliar_persona_natural on smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id = smn_base.smn_afiliaciones.afc_afiliado
	inner join smn_base.smn_modulos on smn_base.smn_modulos.smn_modulos_id = smn_base.smn_afiliaciones.afc_modulo
	left outer join smn_base.smn_parentezco on smn_base.smn_parentezco.smn_parentezco_id = smn_base.smn_afiliaciones.afc_parentezco
where
		smn_base.smn_afiliaciones.smn_afiliaciones_id = ${fld:id}
