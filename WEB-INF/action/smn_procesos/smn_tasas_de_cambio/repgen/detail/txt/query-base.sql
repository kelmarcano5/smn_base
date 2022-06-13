select
	smn_base.smn_monedas.mon_nombre,
	${field}
from
	smn_base.smn_monedas,
	smn_base.smn_tasas_de_cambio
where
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_tasas_de_cambio.tca_moneda_referencia and
		smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id = ${fld:id}
	
