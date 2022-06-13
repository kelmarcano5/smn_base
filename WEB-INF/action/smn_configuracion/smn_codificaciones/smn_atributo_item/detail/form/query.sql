select
	smn_base.smn_atributo_item.ati_codigo,
	smn_base.smn_atributo_item.ati_nombre,
	smn_base.smn_atributo_item.ati_fecha_vigencia_desde,
	smn_base.smn_atributo_item.ati_fecha_vigencia_hasta,
	smn_base.smn_atributo_item.ati_idioma,
	smn_base.smn_atributo_item.ati_usuario,
	smn_base.smn_atributo_item.ati_fecha_registro,
	smn_base.smn_atributo_item.ati_hora,
		smn_base.smn_atributo_item.smn_atributo_item_id
	
from
	smn_base.smn_atributo_item
where
	smn_atributo_item_id = ${fld:id}
