select
		smn_base.smn_contactos.cnt_nombres
from
		smn_base.smn_contactos
where
		upper(smn_base.smn_contactos.cnt_nombres) = upper(${fld:cnt_nombres})
