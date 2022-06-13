select	
	smn_base.smn_monedas.smn_monedas_id, 
	smn_base.smn_monedas.mon_codigo as mon_codigo_pl0,
	smn_base.smn_tasas_de_cambio.smn_monedas_id,
	smn_base.smn_tasas_de_cambio.tca_moneda_referencia,
	smn_base.smn_tasas_de_cambio.tca_fecha_vigencia,
	smn_base.smn_tasas_de_cambio.tca_tasa_cambio,
	smn_base.smn_tasas_de_cambio.tca_fecha_registro

from
	smn_base.smn_monedas,
	smn_base.smn_tasas_de_cambio 
where
	smn_base.smn_monedas.smn_monedas_id=smn_base.smn_tasas_de_cambio.smn_monedas_id 

