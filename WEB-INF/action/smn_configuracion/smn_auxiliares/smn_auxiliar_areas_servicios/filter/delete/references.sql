select 
	smn_base.smn_v_auxiliar.smn_v_auxiliar_id as refid 
from 
	smn_base.smn_v_auxiliar 
where 
	smn_base.smn_v_auxiliar.smn_v_auxiliar_id = ${fld:id}
union
select 
	smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id as refid 
from 
	smn_base.smn_auxiliar_sucursales 
where 
	smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id = ${fld:id}
union
select 
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id as refid 
from 
	smn_base.smn_auxiliar_unidades_negocios 
where 
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id = ${fld:id}
