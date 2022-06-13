select	
	mo1.mon_nombre,
	tc2.mon_nombre2,
	tc1.smn_tasas_de_cambio_id,
	tc1.smn_monedas_id, 
	mo1.mon_codigo as mon_codigo_pl0,
	tc1.smn_monedas_id,
	tc1.tca_moneda_referencia,
	tc1.tca_fecha_vigencia,
	tc1.tca_tasa_cambio,
	tc1.tca_fecha_registro
from
	smn_base.smn_monedas mo1,
	smn_base.smn_tasas_de_cambio tc1,
	(select	
		smn_base.smn_monedas.mon_nombre as mon_nombre2,
		smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id
	from
		smn_base.smn_monedas,
		smn_base.smn_tasas_de_cambio
	where
		smn_base.smn_monedas.smn_monedas_id=smn_base.smn_tasas_de_cambio.tca_moneda_referencia) tc2 
where
	mo1.smn_monedas_id=tc1.smn_monedas_id 
and
	tc1.smn_tasas_de_cambio_id=tc2.smn_tasas_de_cambio_id
and 
	tc1.smn_tasas_de_cambio_id = ${fld:id}
