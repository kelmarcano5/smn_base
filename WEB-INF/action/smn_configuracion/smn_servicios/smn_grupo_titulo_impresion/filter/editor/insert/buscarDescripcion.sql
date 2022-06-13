select
		smn_base.smn_grupo_titulo_impresion.gti_descripcion
from
		smn_base.smn_grupo_titulo_impresion
where
		upper(smn_base.smn_grupo_titulo_impresion.gti_descripcion) = upper(${fld:gti_descripcion})
