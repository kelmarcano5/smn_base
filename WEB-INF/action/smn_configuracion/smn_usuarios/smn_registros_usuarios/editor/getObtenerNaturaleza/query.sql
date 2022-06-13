select smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id as id, 
smn_base.smn_naturaleza_auxiliar.naa_codigo|| ' - ' ||smn_base.smn_naturaleza_auxiliar.naa_nombre as item 
from smn_base.smn_naturaleza_auxiliar 
INNER JOIN smn_base.smn_clase_auxiliar ON smn_base.smn_clase_auxiliar.cla_naturaleza = smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id
where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=${fld:id} limit 1