select smn_base.smn_nivel_estructura.smn_nivel_estructura_id as id, 
smn_base.smn_nivel_estructura.nes_codigo ||'-'|| smn_base.smn_nivel_estructura.nes_nombre as item, 
smn_base.smn_nivel_estructura.nes_codigo as codigo, 
smn_base.smn_nivel_estructura.nes_nombre as descripcion
from smn_base.smn_nivel_estructura 
where  smn_base.smn_nivel_estructura.nes_tipo='IT' and smn_base.smn_nivel_estructura.smn_nivel_estructura_id=${fld:id}
ORDER BY smn_base.smn_nivel_estructura.nes_codigo

