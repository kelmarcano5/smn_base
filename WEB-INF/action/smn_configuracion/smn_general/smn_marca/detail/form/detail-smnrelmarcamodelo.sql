select
	smn_base.smn_modelo.smn_modelo_id,
	smn_base.smn_modelo.mod_codigo as mod_codigo_pl0,
	smn_base.smn_item.smn_item_id,
	smn_base.smn_item.itm_codigo as itm_codigo_pl1,
	smn_base.smn_rel_marca_modelo.*
from
	smn_base.smn_marca ,
	smn_base.smn_modelo,
	smn_base.smn_item,
	smn_base.smn_rel_marca_modelo
where
		smn_base.smn_rel_marca_modelo.smn_marca_id=smn_base.smn_marca.smn_marca_id and
		smn_base.smn_marca.smn_marca_id=${fld:id}  and
	smn_base.smn_modelo.smn_modelo_id=smn_base.smn_rel_marca_modelo.smn_modelo_id and
	smn_base.smn_item.smn_item_id=smn_base.smn_rel_marca_modelo.smn_item_id
	
