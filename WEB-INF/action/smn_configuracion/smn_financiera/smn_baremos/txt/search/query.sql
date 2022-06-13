select
	smn_base.smn_baremos.smn_baremos_id,
	smn_base.smn_baremos.bar_codigo,
	smn_base.smn_baremos.bar_descripcion,
	smn_base.smn_sucursales.suc_codigo ||' - '|| smn_base.smn_sucursales.suc_nombre as smn_sucursales_rf,
	smn_base.smn_entidades.ent_codigo  ||' - '|| smn_base.smn_entidades.ent_descripcion_corta as smn_entidades_rf,
	smn_base.smn_baremos.bar_vigencia_desde,
	smn_base.smn_baremos.bar_vigencia_hasta,
		case
	when smn_base.smn_baremos.bar_tipo='G' then '${lbl:b_general}'
	when smn_base.smn_baremos.bar_tipo='C' then '${lbl:b_class}'
	when smn_base.smn_baremos.bar_tipo='E' then '${lbl:b_especify}'
	end as bar_tipo,
	smn_base.smn_baremos.bar_fecha_registro,
	smn_base.smn_baremos.*
	
from
	smn_base.smn_baremos
	left outer join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_baremos.smn_entidades_rf
	left outer join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_baremos.smn_sucursales_rf