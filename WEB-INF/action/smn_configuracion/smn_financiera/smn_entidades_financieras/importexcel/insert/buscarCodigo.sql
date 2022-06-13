select
	smn_base.smn_entidades_financieras.efi_codigo_swift
from
	smn_base.smn_entidades_financieras
where
	upper(trim(smn_base.smn_entidades_financieras.efi_codigo_swift)) = upper(trim(${fld:efi_codigo_swift}))
