select
		smn_base.smn_idiomas.idi_descripcion
from
		smn_base.smn_idiomas
where
		upper(smn_base.smn_idiomas.idi_descripcion) = upper(${fld:idi_descripcion})
