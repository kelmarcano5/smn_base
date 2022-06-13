select
		smn_base.smn_nivel_estructura.smn_estructura_codigo_id,
	smn_base.smn_nivel_estructura.nes_niveles,
	smn_base.smn_nivel_estructura.nes_codigo,
	smn_base.smn_nivel_estructura.nes_nombre,
	smn_base.smn_nivel_estructura.nes_tipo,
	smn_base.smn_nivel_estructura.nes_fecha_registro
from
	smn_base.smn_nivel_estructura 
where
	smn_base.smn_nivel_estructura.smn_nivel_estructura_id = ${fld:id}
