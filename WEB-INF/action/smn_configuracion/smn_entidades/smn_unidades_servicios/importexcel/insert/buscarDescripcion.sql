select
		smn_base.smn_unidades_servicios.uns_descripcion
from
		smn_base.smn_unidades_servicios
where
		upper(trim(smn_base.smn_unidades_servicios.uns_descripcion)) = upper(trim(${fld:uns_descripcion}))
