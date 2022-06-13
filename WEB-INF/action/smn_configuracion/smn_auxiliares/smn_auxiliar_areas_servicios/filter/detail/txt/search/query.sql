select
	smn_base.smn_v_auxiliar.smn_item,
	smn_base.smn_auxiliar_sucursales.trs_nombre,
	smn_base.smn_auxiliar_unidades_negocios.tun_nombre,
	smn_base.smn_auxiliar_areas_servicios.*
from
	smn_base.smn_auxiliar_areas_servicios
	inner join smn_base.smn_v_auxiliar on smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_auxiliar_areas_servicios.tse_auxiliar
	left outer join smn_base.smn_auxiliar_sucursales on smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id = smn_base.smn_auxiliar_areas_servicios.tse_auxiliar_sucursal
	left outer join smn_base.smn_auxiliar_unidades_negocios on smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id = smn_base.smn_auxiliar_areas_servicios.tse_auxiliar_unidad_negocio
where
	smn_auxiliar_areas_servicios_id = ${fld:id}
