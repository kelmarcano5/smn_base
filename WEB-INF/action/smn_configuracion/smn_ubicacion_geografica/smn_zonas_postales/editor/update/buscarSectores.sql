select
		smn_base.smn_zonas_postales.zpo_sector
from
		smn_base.smn_zonas_postales
where
		upper(smn_base.smn_zonas_postales.zpo_sector) = upper(${fld:zpo_sector})
