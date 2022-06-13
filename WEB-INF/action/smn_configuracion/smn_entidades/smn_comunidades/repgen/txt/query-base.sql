select
	smn_base.smn_unidades_negocios.uen_nombre,
	${field}
from
	smn_base.smn_comunidades
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_comunidades.cmn_unidad_negocio
where
		smn_base.smn_comunidades.smn_comunidades_id is not null
