select
		smn_base.smn_grupo_titulo_impresion.gti_codigo
from
		smn_base.smn_grupo_titulo_impresion
where
		upper(smn_base.smn_grupo_titulo_impresion.gti_codigo) = upper(${fld:gti_codigo})
