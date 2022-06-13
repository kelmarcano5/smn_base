select
	smn_base.smn_entidades_financieras.efi_nombre,
	smn_base.smn_direccion.dir_descripcion,
	${field}
from
	smn_base.smn_entidades_financieras
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_entidades_financieras.efi_direccion
where
		smn_base.smn_entidades_financieras.smn_entidades_financieras_id = ${fld:id}
	
