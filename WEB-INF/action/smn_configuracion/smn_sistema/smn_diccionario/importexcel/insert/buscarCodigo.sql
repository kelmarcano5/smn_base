select
		smn_base.smn_diccionario.dic_codigo
from
		smn_base.smn_diccionario
where
		upper(smn_base.smn_diccionario.dic_codigo) = upper(${fld:dic_codigo})
