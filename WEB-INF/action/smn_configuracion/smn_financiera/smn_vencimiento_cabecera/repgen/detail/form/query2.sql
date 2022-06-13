select
		smn_base.smn_vencimiento_cabecera.tve_codigo,
	smn_base.smn_vencimiento_cabecera.tve_descripcion,
	smn_base.smn_vencimiento_cabecera.tve_estatus,
	smn_base.smn_vencimiento_cabecera.tve_vigencia,
	smn_base.smn_vencimiento_cabecera.tve_fecha_registro
from
	smn_base.smn_vencimiento_cabecera 
where
	smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id = ${fld:id}
