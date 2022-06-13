select
		smn_base.smn_rel_serv_cod_impuesto.smn_servicios_id
from
		smn_base.smn_rel_serv_cod_impuesto
where
		(smn_base.smn_rel_serv_cod_impuesto.smn_servicios_id) = (${fld:smn_servicios_id})
