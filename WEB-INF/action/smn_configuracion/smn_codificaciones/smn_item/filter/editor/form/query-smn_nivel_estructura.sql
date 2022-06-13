select
		smn_base.smn_nivel_estructura.smn_nivel_estructura_id as id,
	smn_base.smn_nivel_estructura.nes_codigo ||' '|| smn_base.smn_nivel_estructura.nes_nombre as item
from
	smn_base.smn_nivel_estructura
	inner join smn_base.smn_estructura_codigo on smn_base.smn_estructura_codigo.smn_estructura_codigo_id = smn_base.smn_nivel_estructura.smn_estructura_codigo_id
where
	smn_base.smn_nivel_estructura.nes_tipo='IT'
order by smn_base.smn_nivel_estructura.nes_nombre asc