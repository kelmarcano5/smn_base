select
		smn_base.smn_entidades_financieras.efi_nombre
from
		smn_base.smn_entidades_financieras
where
		upper(smn_base.smn_entidades_financieras.efi_nombre) = upper(${fld:efi_nombre})
