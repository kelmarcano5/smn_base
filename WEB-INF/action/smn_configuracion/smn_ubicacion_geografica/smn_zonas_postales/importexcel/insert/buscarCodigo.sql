select
		smn_base.smn_zonas_postales.zpo_codigo
from
		smn_base.smn_zonas_postales
where
		upper(smn_base.smn_zonas_postales.zpo_codigo) = upper(${fld:zpo_codigo})
