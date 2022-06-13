select
		smn_base.smn_diccionario.dic_descripcion
from
		smn_base.smn_diccionario
where
		upper(smn_base.smn_diccionario.dic_descripcion) = upper(${fld:dic_descripcion})
