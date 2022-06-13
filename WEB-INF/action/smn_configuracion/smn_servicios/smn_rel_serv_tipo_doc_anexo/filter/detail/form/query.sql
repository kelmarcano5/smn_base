select
	smn_base.smn_servicios.smn_servicios_id, 
	smn_base.smn_servicios.svc_codigo as svc_codigo_pl0,
	smn_base.smn_tipo_doc_anexo.smn_tipo_doc_anexo_id, 
	smn_base.smn_tipo_doc_anexo.tda_codigo as tda_codigo_pl1,
	(select smn_base.smn_servicios.svc_codigo|| ' - ' || smn_base.smn_servicios.svc_descripcion from  smn_base.smn_servicios  where smn_base.smn_servicios.smn_servicios_id is not null  and smn_base.smn_servicios.smn_servicios_id=smn_base.smn_rel_serv_tipo_doc_anexo.smn_servicios_id  order by svc_descripcion ) as smn_servicios_id_combo,
	(select smn_base.smn_tipo_doc_anexo.tda_codigo|| ' - ' || smn_base.smn_tipo_doc_anexo.tda_descripcion from  smn_base.smn_tipo_doc_anexo  where smn_base.smn_tipo_doc_anexo.smn_tipo_doc_anexo_id is not null  and smn_base.smn_tipo_doc_anexo.smn_tipo_doc_anexo_id=smn_base.smn_rel_serv_tipo_doc_anexo.smn_tipo_doc_anexo_id  order by tda_descripcion ) as smn_tipo_doc_anexo_id_combo,
	smn_base.smn_rel_serv_tipo_doc_anexo.smn_servicios_id,
	smn_base.smn_rel_serv_tipo_doc_anexo.smn_tipo_doc_anexo_id,
	smn_base.smn_rel_serv_tipo_doc_anexo.rst_idioma,
	smn_base.smn_rel_serv_tipo_doc_anexo.rst_usuario,
	smn_base.smn_rel_serv_tipo_doc_anexo.rst_fecha_registro,
	smn_base.smn_rel_serv_tipo_doc_anexo.rst_hora,
	smn_base.smn_rel_serv_tipo_doc_anexo.smn_rel_serv_tipo_doc_anexo_id
	
from
	smn_base.smn_servicios,
	smn_base.smn_tipo_doc_anexo,
	smn_base.smn_rel_serv_tipo_doc_anexo
where
	smn_base.smn_servicios.smn_servicios_id=smn_base.smn_rel_serv_tipo_doc_anexo.smn_servicios_id and
	smn_base.smn_tipo_doc_anexo.smn_tipo_doc_anexo_id=smn_base.smn_rel_serv_tipo_doc_anexo.smn_tipo_doc_anexo_id
	and
	smn_rel_serv_tipo_doc_anexo_id = ${fld:id}
