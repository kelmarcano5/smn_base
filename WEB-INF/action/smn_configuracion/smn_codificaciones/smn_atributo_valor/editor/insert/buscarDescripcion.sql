select
		smn_base.smn_atributo_valor.atv_descripcion
from
		smn_base.smn_atributo_valor
where
		upper(smn_base.smn_atributo_valor.atv_descripcion) = upper(${fld:atv_descripcion})
