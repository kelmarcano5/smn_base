select
		smn_base.smn_comunidades.cmn_nombre
from
		smn_base.smn_comunidades
where
		upper(trim(smn_base.smn_comunidades.cmn_nombre)) = upper(trim(${fld:cmn_nombre}))
