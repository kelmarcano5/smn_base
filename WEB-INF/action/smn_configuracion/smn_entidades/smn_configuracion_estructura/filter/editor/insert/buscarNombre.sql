select
		smn_base.smn_configuracion_estructura.coe_nombre
from
		smn_base.smn_configuracion_estructura
where
		upper(smn_base.smn_configuracion_estructura.coe_nombre) = upper(${fld:coe_nombre})
