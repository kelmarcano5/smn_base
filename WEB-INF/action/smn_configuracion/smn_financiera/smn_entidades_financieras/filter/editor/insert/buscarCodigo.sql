select
		smn_base.smn_entidades_financieras.efi_codigo_swift
from
		smn_base.smn_entidades_financieras
where
		upper(smn_base.smn_entidades_financieras.efi_codigo_swift) = upper(${fld:efi_codigo_swift})
