select
		smn_base.smn_comunidades.cmn_nombre
from
		smn_base.smn_comunidades
where
		upper(smn_base.smn_comunidades.cmn_nombre) = upper(${fld:cmn_nombre})
