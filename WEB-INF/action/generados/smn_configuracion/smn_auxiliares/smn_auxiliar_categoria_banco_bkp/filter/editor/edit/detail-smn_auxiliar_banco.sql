select
	(select smn_base.smn_auxiliar_categoria.aca_coodigo || ' - ' || smn_base.smn_auxiliar_categoria.aca_descripcion from  smn_base.smn_auxiliar_categoria  where smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id is not null  and smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_banco.smn_auxiliar_categoria_id  order by smn_base.smn_auxiliar_categoria.aca_descripcion ) as smn_auxiliar_categoria_id2_name,
	smn_base.smn_auxiliar_banco.aab_codigo as aab_codigo2,
	smn_base.smn_auxiliar_banco.aab_descripcion as aab_descripcion2,
	smn_base.smn_auxiliar_banco.smn_auxiliar_banco_id as smn_auxiliar_banco_id2,
	smn_base.smn_auxiliar_banco.smn_auxiliar_categoria_id as smn_auxiliar_categoria_id2
from 
	smn_base.smn_auxiliar_banco
where 
	smn_base.smn_auxiliar_banco.smn_auxiliar_categoria_id = ${fld:id}