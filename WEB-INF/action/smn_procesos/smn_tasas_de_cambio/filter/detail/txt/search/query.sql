select
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_monedas.smn_monedas_id,
	smn_base.smn_monedas.mon_codigo as mon_codigo_pl0,
	smn_base.smn_tasas_de_cambio.*
from
	smn_base.smn_monedas,
	smn_base.smn_tasas_de_cambio
where
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_tasas_de_cambio.tca_moneda_referencia and
	smn_base.smn_monedas.smn_monedas_id=smn_base.smn_tasas_de_cambio.smn_monedas_id
	and
	smn_tasas_de_cambio_id = ${fld:id}
