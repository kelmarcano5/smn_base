select
		smn_base.smn_comunidades.cmn_codigo
from
		smn_base.smn_comunidades
where
		upper(trim(smn_base.smn_comunidades.cmn_codigo)) = upper(trim(${fld:cmn_codigo}))
