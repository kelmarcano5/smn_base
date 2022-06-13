select
		smn_base.smn_proyecto.pry_codigo,
	smn_base.smn_proyecto.pry_nombre,
	smn_base.smn_proyecto.pry_fecha_inicio,
	smn_base.smn_proyecto.pry_fecha_fin_estimada,
	smn_base.smn_proyecto.pry_fecha_cierre,
	smn_base.smn_proyecto.pry_estatus,
	smn_base.smn_proyecto.pry_fecha_registro,
	smn_base.smn_proyecto.smn_clase_auxiliar_rf,
	smn_base.smn_proyecto.smn_auxiliar_rf
from
	smn_base.smn_proyecto 
where
	smn_base.smn_proyecto.smn_proyecto_id = ${fld:id}
