select
	smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id, 
	smn_base.smn_descuentos_retenciones.dyr_codigo as dyr_codigo_pl0,
	smn_base.smn_item.smn_item_id, 
	smn_base.smn_item.itm_codigo as itm_codigo_pl1,
	(select smn_base.smn_descuentos_retenciones.dyr_codigo|| ' - ' || smn_base.smn_descuentos_retenciones.dyr_descripcion from  smn_base.smn_descuentos_retenciones  where smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id is not null  and smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id=smn_base.smn_rel_item_desc_retenc.smn_descuentos_retenciones_id  order by dyr_descripcion ) as smn_descuentos_retenciones_id_combo,
	(select smn_base.smn_item.itm_codigo|| ' - ' || smn_base.smn_item.itm_nombre from  smn_base.smn_item  where smn_base.smn_item.smn_item_id is not null  and smn_base.smn_item.smn_item_id=smn_base.smn_rel_item_desc_retenc.smn_item_id  order by itm_nombre ) as smn_item_id_combo,
	smn_base.smn_rel_item_desc_retenc.smn_descuentos_retenciones_id,
	smn_base.smn_rel_item_desc_retenc.smn_item_id,
	smn_base.smn_rel_item_desc_retenc.rid_idioma,
	smn_base.smn_rel_item_desc_retenc.rid_usuario,
	smn_base.smn_rel_item_desc_retenc.rid_fecha_registro,
	smn_base.smn_rel_item_desc_retenc.rid_hora,
	smn_base.smn_rel_item_desc_retenc.smn_rel_item_desc_retenc_id
	
from
	smn_base.smn_descuentos_retenciones,
	smn_base.smn_item,
	smn_base.smn_rel_item_desc_retenc
where
	smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id=smn_base.smn_rel_item_desc_retenc.smn_descuentos_retenciones_id and
	smn_base.smn_item.smn_item_id=smn_base.smn_rel_item_desc_retenc.smn_item_id
	and
	smn_rel_item_desc_retenc_id = ${fld:id}
