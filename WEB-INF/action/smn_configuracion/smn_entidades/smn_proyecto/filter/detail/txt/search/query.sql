select
		smn_base.smn_proyecto.smn_proyecto_id,
	case
	when smn_base.smn_proyecto.pry_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_proyecto.pry_estatus='CE' then '${lbl:b_close}'
	end as pry_estatus,
	smn_base.smn_proyecto.pry_codigo,
	smn_base.smn_proyecto.pry_nombre,
	smn_base.smn_clase_auxiliar.cla_codigo||'-'||smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_auxiliar_cuenta.cta_codigo||'-'||smn_base.smn_auxiliar_cuenta.cta_descripcion as smn_auxiliar_rf,
	smn_base.smn_proyecto.pry_fecha_inicio,
	smn_base.smn_proyecto.pry_estatus,
	smn_base.smn_proyecto.pry_fecha_registro
	
from
	smn_base.smn_proyecto,
	smn_base.smn_clase_auxiliar,
	smn_base.smn_auxiliar_cuenta
where 
	smn_base.smn_proyecto.smn_clase_auxiliar_rf=smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id and 
	smn_base.smn_proyecto.smn_auxiliar_rf=smn_base.smn_auxiliar_cuenta.smn_auxiliar_cuenta_id and
	smn_proyecto_id = ${fld:id}
