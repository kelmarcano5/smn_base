select 
	smn_base.smn_componentes.smn_componentes_id as id, smn_base.smn_componentes.cmp_codigo ||' - '|| smn_base.smn_componentes.cmp_descripcion as item
from smn_base.smn_componentes 
	inner join smn_base.smn_baremos_detalle_componente on smn_base.smn_baremos_detalle_componente.smn_componente_rf = smn_base.smn_componentes.smn_componentes_id
