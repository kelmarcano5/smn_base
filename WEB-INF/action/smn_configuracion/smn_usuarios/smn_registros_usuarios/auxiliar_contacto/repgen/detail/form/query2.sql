select
		smn_base.smn_auxiliar_contacto.smn_clase_auxiliar_rf,
	smn_base.smn_auxiliar_contacto.smn_auxiliar_rf,
	smn_base.smn_auxiliar_contacto.smn_tipo_contacto_rf,
	smn_base.smn_auxiliar_contacto.auc_descripcion,
	smn_base.smn_auxiliar_contacto.auc_fecha_registro
from
	smn_base.smn_auxiliar_contacto 
where
	smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id = ${fld:id}
