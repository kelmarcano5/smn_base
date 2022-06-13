select
		smn_base.smn_plantilla_cabecera.pca_descripcion
from
		smn_base.smn_plantilla_cabecera
where
		upper(smn_base.smn_plantilla_cabecera.pca_descripcion) = upper(${fld:pca_descripcion})
