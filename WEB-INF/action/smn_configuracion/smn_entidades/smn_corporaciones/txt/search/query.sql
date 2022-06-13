select
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_unidades_negocios.uen_nombre,
	smn_base.smn_corporaciones.smn_corporaciones_id,
	smn_base.smn_corporaciones.crp_codigo,
	smn_base.smn_corporaciones.crp_nombre,
	smn_base.smn_corporaciones.crp_unidad_negocio,
	smn_base.smn_corporaciones.crp_moneda,
	smn_base.smn_corporaciones.crp_direccion,
	smn_base.smn_corporaciones.crp_fecha_registro
from
	smn_base.smn_corporaciones
	left outer join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_corporaciones.crp_direccion
	inner join smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_base.smn_corporaciones.crp_moneda
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_corporaciones.crp_unidad_negocio
