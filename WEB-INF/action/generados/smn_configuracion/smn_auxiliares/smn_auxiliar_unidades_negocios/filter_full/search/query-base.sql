select	
	smn_base.smn_auxiliar_unidades_negocios.tun_codigo,
	smn_base.smn_auxiliar_unidades_negocios.tun_nombre,
	smn_base.smn_auxiliar_unidades_negocios.tun_responsable,
	smn_base.smn_auxiliar_unidades_negocios.tun_direccion,
	smn_base.smn_auxiliar_unidades_negocios.tun_telefono_fijo,
	smn_base.smn_auxiliar_unidades_negocios.tun_telefono_movil,
	smn_base.smn_auxiliar_unidades_negocios.tun_email,
	smn_base.smn_auxiliar_unidades_negocios.tun_fecha_registro,
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id

from
	smn_base.smn_auxiliar_unidades_negocios
where
	smn_auxiliar_unidades_negocios_id is not null	
 	 	${filter}
order by 
	smn_auxiliar_unidades_negocios_id