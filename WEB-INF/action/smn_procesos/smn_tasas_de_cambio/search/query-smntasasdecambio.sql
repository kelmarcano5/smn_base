select	
	morf.mon_codigo ||' - '|| morf.mon_nombre as mon_nombre,
	mo.mon_codigo ||' - '||  mo.mon_nombre as mon_codigo_pl0,
	smn_base.smn_tasas_de_cambio.smn_monedas_id,
	smn_base.smn_tasas_de_cambio.tca_moneda_referencia,
	smn_base.smn_tasas_de_cambio.tca_fecha_vigencia,
	smn_base.smn_tasas_de_cambio.tca_tasa_cambio,
	smn_base.smn_tasas_de_cambio.tca_fecha_registro,
	smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id,
	smn_base.smn_tasas_de_cambio.tca_descripcion,
	case
		when smn_base.smn_tasas_de_cambio.tca_tipo_tasa='OF' then '${lbl:b_oficial}'
		when smn_base.smn_tasas_de_cambio.tca_tipo_tasa='LI' then '${lbl:b_libre}'
		when smn_base.smn_tasas_de_cambio.tca_tipo_tasa='PR' then '${lbl:b_proyectada}'
	end as tca_tipo_tasa,
	case
		when smn_base.smn_tasas_de_cambio.tca_estatus='AC' then '${lbl:b_active}'
		when smn_base.smn_tasas_de_cambio.tca_estatus='IN' then '${lbl:b_inactive}'
	end as tca_estatus_combo
from
	smn_base.smn_tasas_de_cambio 
	inner join smn_base.smn_monedas mo on mo.smn_monedas_id = smn_base.smn_tasas_de_cambio.smn_monedas_id
	inner join smn_base.smn_monedas morf on morf.smn_monedas_id = smn_base.smn_tasas_de_cambio.tca_moneda_referencia
order by smn_base.smn_tasas_de_cambio.tca_fecha_vigencia desc