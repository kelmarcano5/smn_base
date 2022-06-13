select	
	smn_base.smn_terceros.smn_terceros_id, 
	smn_base.smn_terceros.ter_descripcion_corta as ter_descripcion_corta_pl0,
	smn_base.smn_terceros_unidades_negocios.smn_terceros_id,
	smn_base.smn_terceros_unidades_negocios.tun_codigo,
	smn_base.smn_terceros_unidades_negocios.tun_nombre,
	smn_base.smn_terceros_unidades_negocios.tun_responsable,
	smn_base.smn_terceros_unidades_negocios.tun_direccion,
	smn_base.smn_terceros_unidades_negocios.tun_telefono_fijo,
	smn_base.smn_terceros_unidades_negocios.tun_telefono_movil,
	smn_base.smn_terceros_unidades_negocios.tun_email,
	smn_base.smn_terceros_unidades_negocios.tun_fecha_registro,
	smn_base.smn_terceros_unidades_negocios.smn_terceros_unidades_negocios_id

from
	smn_base.smn_terceros,
	smn_base.smn_terceros_unidades_negocios
where
	smn_terceros_unidades_negocios_id is not null	
and 	smn_base.smn_terceros.smn_terceros_id=smn_base.smn_terceros_unidades_negocios.smn_terceros_id 
	 	${filter}
order by 
	smn_terceros_unidades_negocios_id