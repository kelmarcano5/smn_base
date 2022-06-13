select
--	(select smn_base.smn_v_auxiliar.smn_codigo || ' - ' || smn_base.smn_v_auxiliar.smn_item from  smn_base.smn_v_auxiliar  where smn_base.smn_v_auxiliar.smn_v_auxiliar_id=smn_base.smn_auxiliar_contable.smn_auxiliar_categoria_id order by smn_base.smn_v_auxiliar.smn_item) as smn_auxiliar_categoria_id2_name,
	smn_base.smn_auxiliar_banco.aab_codigo as aab_codigo2,
	smn_base.smn_auxiliar_banco.aab_descripcion as aab_descripcion2,
	smn_base.smn_auxiliar_banco.smn_auxiliar_banco_id as smn_auxiliar_banco_id2,
	smn_base.smn_auxiliar_banco.smn_auxiliar_categoria_id as smn_auxiliar_categoria_id2
from 
	smn_base.smn_auxiliar_banco
where 
	smn_base.smn_auxiliar_banco.smn_auxiliar_categoria_id = ${fld:id}