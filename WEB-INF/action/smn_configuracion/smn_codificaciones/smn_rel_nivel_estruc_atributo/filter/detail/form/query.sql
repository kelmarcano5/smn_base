select
	smn_base.smn_nivel_estructura.smn_nivel_estructura_id, 
	smn_base.smn_nivel_estructura.nes_codigo as nes_codigo_pl0,
	smn_base.smn_atributo_item.smn_atributo_item_id, 
	smn_base.smn_atributo_item.ati_codigo as ati_codigo_pl1,
	(select smn_base.smn_nivel_estructura.nes_codigo|| ' - ' || smn_base.smn_nivel_estructura.nes_nombre from  smn_base.smn_nivel_estructura  where smn_base.smn_nivel_estructura.smn_nivel_estructura_id is not null  and smn_base.smn_nivel_estructura.smn_nivel_estructura_id=smn_base.smn_rel_nivel_estruc_atributo.smn_nivel_estructura_id  order by nes_nombre ) as smn_nivel_estructura_id_combo,
	(select smn_base.smn_atributo_item.ati_codigo|| ' - ' || smn_base.smn_atributo_item.ati_nombre from  smn_base.smn_atributo_item  where smn_base.smn_atributo_item.smn_atributo_item_id is not null  and smn_base.smn_atributo_item.smn_atributo_item_id=smn_base.smn_rel_nivel_estruc_atributo.smn_atributo_item_id  order by ati_nombre ) as smn_atributo_item_id_combo,
	smn_base.smn_rel_nivel_estruc_atributo.smn_nivel_estructura_id,
	smn_base.smn_rel_nivel_estruc_atributo.smn_atributo_item_id,
	smn_base.smn_rel_nivel_estruc_atributo.rna_secuencia
from
	smn_base.smn_nivel_estructura,
	smn_base.smn_atributo_item,
	smn_base.smn_rel_nivel_estruc_atributo
where
	smn_base.smn_nivel_estructura.smn_nivel_estructura_id=smn_base.smn_rel_nivel_estruc_atributo.smn_nivel_estructura_id and
	smn_base.smn_atributo_item.smn_atributo_item_id=smn_base.smn_rel_nivel_estruc_atributo.smn_atributo_item_id
	and
	smn_rel_nivel_estruc_atributo_id = ${fld:id}
