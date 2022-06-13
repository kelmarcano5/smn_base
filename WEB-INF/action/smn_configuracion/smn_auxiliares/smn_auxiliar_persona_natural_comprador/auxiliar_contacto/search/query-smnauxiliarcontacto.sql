select
	smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id,
	smn_base.smn_auxiliar.smn_auxiliar_id,
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id,
	smn_base.smn_auxiliar.aux_nombres||'-'||smn_base.smn_auxiliar.aux_apellidos as smn_auxiliar_rf,
	smn_base.smn_clase_auxiliar.cla_codigo||'-'||smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_tipo_contactos.tco_codigo||'-'||smn_base.smn_tipo_contactos.tco_descripcion as smn_tipo_contactos_rf,
	smn_base.smn_auxiliar_contacto.auc_descripcion,
	smn_base.smn_auxiliar_contacto.auc_fecha_registro
from
	smn_base.smn_auxiliar_contacto
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id=	smn_base.smn_auxiliar_contacto.smn_auxiliar_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_auxiliar_contacto.smn_clase_auxiliar_rf
	left outer join smn_base.smn_tipo_contactos on smn_base.smn_tipo_contactos.smn_tipo_contactos_id=smn_base.smn_auxiliar_contacto.smn_tipo_contactos_rf
where
	smn_base.smn_auxiliar_contacto.smn_auxiliar_rf=${fld:id}