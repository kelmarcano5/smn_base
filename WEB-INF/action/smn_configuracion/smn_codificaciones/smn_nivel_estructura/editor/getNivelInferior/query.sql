select
	smn_base.smn_nivel_estructura.nes_codigo as id,
	smn_base.smn_nivel_estructura.nes_codigo||' - '|| smn_base.smn_nivel_estructura.nes_nombre as item,
	smn_base.smn_nivel_estructura.nes_niveles,
	smn_base.smn_nivel_estructura.nes_tipo
	
from
	smn_base.smn_estructura_codigo,
	smn_base.smn_nivel_estructura
where
	smn_nivel_estructura_id is not null
	and smn_base.smn_estructura_codigo.smn_estructura_codigo_id=smn_base.smn_nivel_estructura.smn_estructura_codigo_id and
 	smn_base.smn_nivel_estructura.nes_niveles=${fld:id}
 order by smn_base.smn_nivel_estructura.nes_codigo asc
