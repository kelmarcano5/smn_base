select
	smn_base.smn_auxiliar_unidades_negocios.tun_nombre,
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_monedas.mon_nombre,
	${field}
from
	smn_base.smn_auxiliar_unidades_negocios,
	smn_base.smn_direccion,
	smn_base.smn_monedas,
	smn_base.smn_auxiliar_corporaciones
where
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id = smn_base.smn_auxiliar_corporaciones.tcp_auxiliar_unidad_negocio and
	smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar_corporaciones.tcp_direccion and
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_auxiliar_corporaciones.tcp_moneda and
		smn_base.smn_auxiliar_corporaciones.smn_auxiliar_corporaciones_id is not null
