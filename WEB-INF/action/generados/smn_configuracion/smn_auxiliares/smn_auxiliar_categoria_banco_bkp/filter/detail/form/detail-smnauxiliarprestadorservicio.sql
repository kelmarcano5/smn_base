select
	case
		when smn_base.smn_auxiliar_prestador_servicio.aps_clasif_abc='A' then '${lbl:b_type} A'
		when smn_base.smn_auxiliar_prestador_servicio.aps_clasif_abc='B' then '${lbl:b_type} B'
		when smn_base.smn_auxiliar_prestador_servicio.aps_clasif_abc='C' then '${lbl:b_type} C'
	end as aps_clasif_abc_combo,
	smn_base.smn_auxiliar_prestador_servicio.*
from 
	smn_base.smn_auxiliar_prestador_servicio,
	smn_base.smn_auxiliar_categoria
where
	smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id and 
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=${fld:id}
