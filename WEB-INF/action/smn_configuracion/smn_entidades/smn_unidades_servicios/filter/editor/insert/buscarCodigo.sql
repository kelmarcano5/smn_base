select
		smn_base.smn_unidades_servicios.uns_codigo
from
		smn_base.smn_unidades_servicios
where
		upper(smn_base.smn_unidades_servicios.uns_codigo) = upper(${fld:uns_codigo})
