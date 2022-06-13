select
	smn_base.smn_tasas_impositivas.smn_tasas_impositivas_id,
	${field}
from
	smn_base.smn_unidades_impositivas,
	smn_base.smn_tasas_impositivas
where
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id=smn_base.smn_tasas_impositivas.smn_unidades_impositivas_id
and
	smn_base.smn_tasas_impositivas.smn_tasas_impositivas_id is not null
and
	smn_base.smn_tasas_impositivas.tim_idioma = '${def:locale}'
and
	smn_base.smn_tasas_impositivas.tim_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_tasas_impositivas.smn_tasas_impositivas_id desc
	
