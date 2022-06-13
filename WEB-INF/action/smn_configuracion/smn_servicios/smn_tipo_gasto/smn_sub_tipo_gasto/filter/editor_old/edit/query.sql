select	
	smn_base.smn_tipo_gasto.smn_tipo_gasto_id, 
	smn_base.smn_tipo_gasto.tig_codigo as tig_codigo_pl0,
	smn_base.smn_sub_tipo_gasto.*
from
	smn_base.smn_tipo_gasto,
	smn_base.smn_sub_tipo_gasto 
where
	smn_base.smn_tipo_gasto.smn_tipo_gasto_id=smn_base.smn_sub_tipo_gasto.smn_tipo_gasto_id and
	smn_sub_tipo_gasto_id = ${fld:id} 
	


