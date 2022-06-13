select
		smn_base.smn_nivel_estructura.nes_nombre
from
		smn_base.smn_nivel_estructura
where
		upper(smn_base.smn_nivel_estructura.nes_nombre) = upper(${fld:nes_nombre})
