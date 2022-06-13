select
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id,
	${field}
from
	smn_base.smn_entidades_financieras
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_entidades_financieras.efi_direccion
where
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id is not null
and
	smn_base.smn_entidades_financieras.efi_idioma = '${def:locale}'
and
	smn_base.smn_entidades_financieras.efi_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id desc
	
