WITH rows as (
select smn_base.smn_item.itm_codigo, smn_base.smn_item.itm_nombre, smn_base.smn_nivel_estructura.nes_codigo, smn_base.smn_nivel_estructura.nes_niveles, 
case 
	when ${fld:porcen} = 0 then smn_base.smn_baremos_detalle.bad_precio_moneda_local*${fld:tasa}
	when ${fld:tasa} = 0 then smn_base.smn_baremos_detalle.bad_precio_moneda_local*${fld:porcen}
end as precio_nuevo

from smn_base.smn_baremos_detalle
inner join smn_base.smn_item on smn_base.smn_item.smn_item_id = smn_base.smn_baremos_detalle.smn_item_rf
inner join smn_base.smn_nivel_estructura on smn_base.smn_nivel_estructura.smn_nivel_estructura_id = smn_base.smn_item.smn_nivel_estructura_id
inner join smn_base.smn_baremos on smn_base.smn_baremos.smn_baremos_id = ${fld:id2}
where
smn_base.smn_nivel_estructura.smn_estructura_codigo_id=${fld:estruc} and
    upper(smn_base.smn_nivel_estructura.nes_codigo) like upper(${fld:codig}) and smn_base.smn_nivel_estructura.nes_niveles=${fld:nivel}
    and smn_base.smn_nivel_estructura.nes_tipo=${fld:tipo}
) 
UPDATE smn_base.smn_baremos_detalle set bad_precio_moneda_local=rows.precio_nuevo from rows where smn_base.smn_baremos_detalle.smn_baremos_id=${fld:id2} and
smn_base.smn_baremos_detalle.bad_estatus='A'
