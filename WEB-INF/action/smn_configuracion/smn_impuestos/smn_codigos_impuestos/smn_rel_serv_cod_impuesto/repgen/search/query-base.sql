select
		smn_base.smn_rel_serv_cod_impuesto.smn_rel_serv_cod_impuesto_id,
	${field}
from
	smn_base.smn_rel_serv_cod_impuesto
where
		smn_base.smn_rel_serv_cod_impuesto.smn_rel_serv_cod_impuesto_id is not null
	${filter}
	
	
