select
		smn_base.smn_unidades_servicios.uns_descripcion
from
		smn_base.smn_unidades_servicios
where
		upper(smn_base.smn_unidades_servicios.uns_descripcion) = upper(${fld:uns_descripcion})
