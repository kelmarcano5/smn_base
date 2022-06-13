select
		smn_base.smn_configuracion_estructura.coe_codigo
from
		smn_base.smn_configuracion_estructura
where
		upper(smn_base.smn_configuracion_estructura.coe_codigo) = upper(${fld:coe_codigo})
