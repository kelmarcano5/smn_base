SELECT 
smn_base.smn_v_auxiliar.smn_v_auxiliar_id as id,
smn_base.smn_v_auxiliar.smn_codigo||'-'||smn_base.smn_v_auxiliar.smn_item as item 
from smn_base.smn_v_auxiliar
where smn_base.smn_v_auxiliar.smn_clase_id=(${fld:id})