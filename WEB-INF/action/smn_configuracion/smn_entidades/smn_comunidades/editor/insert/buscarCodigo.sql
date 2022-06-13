select
		smn_base.smn_comunidades.cmn_codigo
from
		smn_base.smn_comunidades
where
		upper(smn_base.smn_comunidades.cmn_codigo) = upper(${fld:cmn_codigo})
