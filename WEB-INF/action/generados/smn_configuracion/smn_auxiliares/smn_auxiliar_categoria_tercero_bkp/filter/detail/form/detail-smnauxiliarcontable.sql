select
	smn_base.smn_auxiliar_contable.*
from 
	smn_base.smn_auxiliar_contable,
	smn_base.smn_auxiliar_categoria
where
	smn_base.smn_auxiliar_contable.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id and 
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=${fld:id}
