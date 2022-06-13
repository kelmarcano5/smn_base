with qw as (
	SELECT 
smn_base.smn_baremos_detalle.bad_precio_moneda_local - SUM(smn_base.smn_baremos_detalle_componente.bdc_monto_ml) as montofinal,
smn_base.smn_baremos_detalle.bad_precio_moneda_alterna - SUM(smn_base.smn_baremos_detalle_componente.bdc_monto_ma) as montofinal_alt,
	smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id as idbd
	FROM smn_base.smn_baremos_detalle_componente
	inner join smn_base.smn_baremos_detalle on smn_base.smn_baremos_detalle.smn_baremos_detalle_id = smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id
	where smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id=${fld:id2}
	GROUP BY smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id, smn_base.smn_baremos_detalle.bad_precio_moneda_local,
	smn_base.smn_baremos_detalle.bad_precio_moneda_alterna
)
UPDATE smn_base.smn_baremos_detalle_componente SET
	bdc_precio_ml=qw.montofinal,
	bdc_monto_ml=qw.montofinal,
	bdc_precio_ma=qw.montofinal_alt,
	bdc_monto_ma=qw.montofinal_alt
from qw
WHERE
	smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id=${fld:id2} and smn_base.smn_baremos_detalle_componente.smn_forma_calculo_rf = 'D';
