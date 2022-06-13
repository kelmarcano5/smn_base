select
		smn_base.smn_baremos.bar_descripcion
from
		smn_base.smn_baremos
where
		upper(smn_base.smn_baremos.bar_descripcion) = upper(${fld:bar_descripcion})
