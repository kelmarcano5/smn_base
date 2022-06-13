select
	smn_base.smn_auxiliar_unidades_negocios.tun_nombre,
	smn_base.smn_direccion.dir_descripcion,
	${field}
from
	smn_base.smn_auxiliar_unidades_negocios,
	smn_base.smn_direccion,
	smn_base.smn_auxiliar_sucursales
where
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id = smn_base.smn_auxiliar_sucursales.trs_auxiliar_unidad_negocio and
	smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar_sucursales.trs_direccion and
		smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id = ${fld:id}
	
