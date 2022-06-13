select
		smn_base.smn_idiomas.idi_codigo
from
		smn_base.smn_idiomas
where
		upper(trim(smn_base.smn_idiomas.idi_codigo)) = upper(trim(${fld:idi_codigo}))
