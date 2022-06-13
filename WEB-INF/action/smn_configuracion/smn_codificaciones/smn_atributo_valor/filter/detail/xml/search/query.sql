select
	smn_base.smn_atributo_item.smn_atributo_item_id,
	smn_base.smn_atributo_item.ati_codigo as ati_codigo_pl0,
select
	smn_base.smn_atributo_valor.smn_atributo_item_id,
	smn_base.smn_atributo_valor.atv_codigo,
	smn_base.smn_atributo_valor.atv_descripcion,
	smn_base.smn_atributo_valor.atv_fecha_vigencia_desde,
	smn_base.smn_atributo_valor.atv_fecha_vigencia_hasta,
	smn_base.smn_atributo_valor.atv_idioma,
	smn_base.smn_atributo_valor.atv_usuario,
	smn_base.smn_atributo_valor.atv_fecha_registro,
	smn_base.smn_atributo_valor.atv_hora,
		smn_base.smn_atributo_valor.smn_atributo_valor_id
from
	smn_base.smn_atributo_item,
	smn_base.smn_atributo_valor
where
	smn_base.smn_atributo_item.smn_atributo_item_id=smn_base.smn_atributo_valor.smn_atributo_item_id
	and
	smn_atributo_valor_id = ${fld:id}
