select
	smn_base.smn_item.smn_item_id, 
	smn_base.smn_item.itm_codigo as itm_codigo_pl0,
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id, 
	smn_base.smn_codigos_impuestos.imp_codigo as imp_codigo_pl1,
	(select smn_base.smn_item.itm_codigo|| ' - ' || smn_base.smn_item.itm_nombre from  smn_base.smn_item  where smn_base.smn_item.smn_item_id is not null  and smn_base.smn_item.smn_item_id=smn_base.smn_rel_item_cod_impuesto.smn_item_id  order by itm_nombre ) as smn_item_id_combo,
	(select smn_base.smn_codigos_impuestos.imp_codigo|| ' - ' || smn_base.smn_codigos_impuestos.imp_descripcion from  smn_base.smn_codigos_impuestos  where smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id is not null  and smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id=smn_base.smn_rel_item_cod_impuesto.smn_codigos_impuestos_id  order by imp_descripcion ) as smn_codigos_impuestos_id_combo,
	smn_base.smn_rel_item_cod_impuesto.smn_item_id,
	smn_base.smn_rel_item_cod_impuesto.smn_codigos_impuestos_id,
	smn_base.smn_rel_item_cod_impuesto.rii_idioma,
	smn_base.smn_rel_item_cod_impuesto.rii_usuario,
	smn_base.smn_rel_item_cod_impuesto.rii_fecha_registro,
	smn_base.smn_rel_item_cod_impuesto.rii_hora,
	smn_base.smn_rel_item_cod_impuesto.smn_rel_item_cod_impuesto_id
	
from
	smn_base.smn_item,
	smn_base.smn_codigos_impuestos,
	smn_base.smn_rel_item_cod_impuesto
where
	smn_rel_item_cod_impuesto_id is not null
	and 	smn_base.smn_item.smn_item_id=smn_base.smn_rel_item_cod_impuesto.smn_item_id and
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id=smn_base.smn_rel_item_cod_impuesto.smn_codigos_impuestos_id
	${filter}
order by
		smn_rel_item_cod_impuesto_id
