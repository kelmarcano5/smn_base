select
		smn_base.smn_unidades_servicios.uns_codigo
from
		smn_base.smn_unidades_servicios
where
		upper(trim(smn_base.smn_unidades_servicios.uns_codigo)) = upper(trim(${fld:uns_codigo}))
