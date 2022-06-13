select
	smn_base.smn_entidades_financieras.efi_nombre
from
	smn_base.smn_entidades_financieras
where
	upper(trim(smn_base.smn_entidades_financieras.efi_nombre)) = upper(trim(${fld:efi_nombre}))
