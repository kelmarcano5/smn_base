select
		smn_base.smn_idiomas.idi_descripcion
from
		smn_base.smn_idiomas
where
		upper(trim(smn_base.smn_idiomas.idi_descripcion)) = upper(trim(${fld:idi_descripcion}))
