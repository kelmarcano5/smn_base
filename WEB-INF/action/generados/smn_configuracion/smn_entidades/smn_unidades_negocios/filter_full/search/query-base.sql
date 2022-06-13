select	
	smn_base.smn_unidades_negocios.uen_codigo,
	smn_base.smn_unidades_negocios.uen_nombre,
	smn_base.smn_unidades_negocios.uen_responsable,
	smn_base.smn_unidades_negocios.uen_direccion,
	smn_base.smn_unidades_negocios.uen_telefono_fijo,
	smn_base.smn_unidades_negocios.uen_telefono_movil,
	smn_base.smn_unidades_negocios.uen_email,
	smn_base.smn_unidades_negocios.uen_fecha_registro,
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id

from
	smn_base.smn_unidades_negocios
where
	smn_unidades_negocios_id is not null	
 	 	${filter}
order by 
	smn_unidades_negocios_id