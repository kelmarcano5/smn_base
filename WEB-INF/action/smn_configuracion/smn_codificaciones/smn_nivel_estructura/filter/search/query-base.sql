select
	smn_base.smn_estructura_codigo.smn_estructura_codigo_id,
	smn_base.smn_estructura_codigo.eco_codigo as eco_codigo_pl0,
	(select smn_base.smn_estructura_codigo.eco_codigo|| ' - ' || smn_base.smn_estructura_codigo.eco_nombre from  smn_base.smn_estructura_codigo  where smn_base.smn_estructura_codigo.smn_estructura_codigo_id is not null  and smn_base.smn_estructura_codigo.smn_estructura_codigo_id=smn_base.smn_nivel_estructura.smn_estructura_codigo_id  order by eco_nombre ) as smn_estructura_codigo_id_combo,
	case
	when smn_base.smn_nivel_estructura.nes_tipo='TI' then '${lbl:b_titulo}'
	when smn_base.smn_nivel_estructura.nes_tipo='IT' then '${lbl:b_item}'
	when smn_base.smn_nivel_estructura.nes_tipo='OC' then '${lbl:b_otro_codigo}'
	end as nes_tipo_combo,
	smn_base.smn_nivel_estructura.smn_estructura_codigo_id,
	smn_base.smn_nivel_estructura.nes_niveles,
	smn_base.smn_nivel_estructura.nes_codigo,
	smn_base.smn_nivel_estructura.nes_nombre,
	smn_base.smn_nivel_estructura.nes_tipo,
	smn_base.smn_nivel_estructura.nes_idioma,
	smn_base.smn_nivel_estructura.nes_usuario,
	smn_base.smn_nivel_estructura.nes_fecha_registro,
	smn_base.smn_nivel_estructura.nes_hora,
		smn_base.smn_nivel_estructura.smn_nivel_estructura_id
	
from
	smn_base.smn_estructura_codigo,
	smn_base.smn_nivel_estructura
where
	smn_nivel_estructura_id is not null
	and 	smn_base.smn_estructura_codigo.smn_estructura_codigo_id=smn_base.smn_nivel_estructura.smn_estructura_codigo_id
	${filter}
order by
		smn_nivel_estructura_id
