select
		smn_base.smn_idiomas.idi_codigo
from
		smn_base.smn_idiomas
where
		upper(smn_base.smn_idiomas.idi_codigo) = upper(${fld:idi_codigo})
