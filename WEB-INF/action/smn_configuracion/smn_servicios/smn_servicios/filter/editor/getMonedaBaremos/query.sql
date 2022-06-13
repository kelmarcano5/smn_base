SELECT smn_base.smn_monedas.smn_monedas_id AS id FROM smn_base.smn_baremos 
INNER JOIN smn_base.smn_monedas ON smn_base.smn_monedas.smn_monedas_id=smn_base.smn_baremos.smn_moneda_rf
WHERE smn_base.smn_baremos.smn_baremos_id=${fld:id}