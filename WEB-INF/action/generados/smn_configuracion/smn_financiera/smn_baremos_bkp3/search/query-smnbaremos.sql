select
	case
		when smn_base.smn_baremos.bar_tipo='GE' then '${lbl:b_general}'
		when smn_base.smn_baremos.bar_tipo='ES' then '${lbl:b_specific}'
	end as bar_tipo_combo,
	smn_base.smn_baremos.bar_codigo,
	smn_base.smn_baremos.bar_descripcion,
	smn_base.smn_baremos.bar_entidad,
	smn_base.smn_baremos.bar_tipo,
	smn_base.smn_baremos.bar_vigencia_desde,
	smn_base.smn_baremos.bar_vigencia_hasta,
	smn_base.smn_baremos.bar_fecha_registro

from 
	smn_base.smn_baremos
