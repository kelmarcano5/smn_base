select
		smn_base.smn_contactos.cnt_descripcion1
from
		smn_base.smn_contactos
where
		upper(smn_base.smn_contactos.cnt_descripcion1) = upper(${fld:cnt_descripcion1})
