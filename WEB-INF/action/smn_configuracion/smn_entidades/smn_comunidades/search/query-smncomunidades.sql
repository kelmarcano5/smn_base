select
	smn_base.smn_unidades_negocios.uen_nombre,
	smn_base.smn_comunidades.smn_comunidades_id,
	smn_base.smn_comunidades.cmn_codigo,
	smn_base.smn_comunidades.cmn_nombre,
	smn_base.smn_comunidades.cmn_unidad_negocio,
	smn_base.smn_comunidades.cmn_fecha_registro	
from
	smn_base.smn_comunidades
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_comunidades.cmn_unidad_negocio
where
	smn_base.smn_comunidades.cmn_idioma = '${def:locale}'
order by
	smn_base.smn_comunidades.smn_comunidades_id desc