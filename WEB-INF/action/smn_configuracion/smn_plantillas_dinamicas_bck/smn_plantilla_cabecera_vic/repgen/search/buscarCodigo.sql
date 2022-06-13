select
		smn_base.smn_plantilla_cabecera.pca_codigo
from
		smn_base.smn_plantilla_cabecera
where
		upper(smn_base.smn_plantilla_cabecera.pca_codigo) = upper(${fld:pca_codigo})
