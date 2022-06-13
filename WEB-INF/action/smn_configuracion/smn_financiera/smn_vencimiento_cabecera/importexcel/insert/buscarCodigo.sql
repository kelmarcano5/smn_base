select
		smn_base.smn_vencimiento_cabecera.tve_codigo
from
		smn_base.smn_vencimiento_cabecera
where
		upper(smn_base.smn_vencimiento_cabecera.tve_codigo) = upper(${fld:tve_codigo})
