select
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id, 
	smn_base.smn_codigos_impuestos.imp_codigo as imp_codigo_pl0,
	smn_base.smn_servicios.smn_servicios_id, 
	smn_base.smn_servicios.svc_codigo as svc_codigo_pl1,
	(select smn_base.smn_codigos_impuestos.imp_codigo|| ' - ' || smn_base.smn_codigos_impuestos.imp_descripcion from  smn_base.smn_codigos_impuestos  where smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id is not null  and smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id=smn_base.smn_rel_serv_cod_impuesto.smn_codigos_impuestos_id  order by imp_descripcion ) as smn_codigos_impuestos_id_combo,
	(select smn_base.smn_servicios.svc_codigo|| ' - ' || smn_base.smn_servicios.svc_descripcion from  smn_base.smn_servicios  where smn_base.smn_servicios.smn_servicios_id is not null  and smn_base.smn_servicios.smn_servicios_id=smn_base.smn_rel_serv_cod_impuesto.smn_servicios_id  order by svc_descripcion ) as smn_servicios_id_combo,
	smn_base.smn_rel_serv_cod_impuesto.smn_codigos_impuestos_id,
	smn_base.smn_rel_serv_cod_impuesto.smn_servicios_id,
	smn_base.smn_rel_serv_cod_impuesto.rsi_idioma,
	smn_base.smn_rel_serv_cod_impuesto.rsi_usuario,
	smn_base.smn_rel_serv_cod_impuesto.rsi_fecha_registro,
	smn_base.smn_rel_serv_cod_impuesto.rsi_hora,
	smn_base.smn_rel_serv_cod_impuesto.smn_rel_serv_cod_impuesto_id
	
from
	smn_base.smn_codigos_impuestos,
	smn_base.smn_servicios,
	smn_base.smn_rel_serv_cod_impuesto
where
	smn_rel_serv_cod_impuesto_id is not null
	and 	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id=smn_base.smn_rel_serv_cod_impuesto.smn_codigos_impuestos_id and
	smn_base.smn_servicios.smn_servicios_id=smn_base.smn_rel_serv_cod_impuesto.smn_servicios_id
	${filter}
order by
		smn_rel_serv_cod_impuesto_id
