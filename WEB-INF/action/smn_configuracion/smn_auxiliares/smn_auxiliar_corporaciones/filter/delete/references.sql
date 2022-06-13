select 
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id as refid 
from 
	smn_base.smn_auxiliar_unidades_negocios 
where 
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id = ${fld:id}
union
select 
	smn_base.smn_monedas.smn_monedas_id as refid 
from 
	smn_base.smn_monedas 
where 
	smn_base.smn_monedas.smn_monedas_id = ${fld:id}
union
select 
	smn_base.smn_direccion.smn_direccion_id as refid 
from 
	smn_base.smn_direccion 
where 
	smn_base.smn_direccion.smn_direccion_id = ${fld:id}
