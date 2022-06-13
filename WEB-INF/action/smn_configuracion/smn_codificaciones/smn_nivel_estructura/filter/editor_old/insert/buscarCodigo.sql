select
		smn_base.smn_nivel_estructura.nes_codigo
from
		smn_base.smn_nivel_estructura
where
		upper(smn_base.smn_nivel_estructura.nes_codigo) = upper(${fld:nes_codigo})
