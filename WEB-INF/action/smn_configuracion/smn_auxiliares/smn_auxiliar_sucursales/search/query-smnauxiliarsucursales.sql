select
	smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id,
	smn_base.smn_auxiliar_sucursales.trs_codigo,
	smn_base.smn_auxiliar_sucursales.trs_nombre,
	smn_base.smn_direccion.dir_descripcion as trs_direccion,
	ax1.aux_descripcion as smn_auxiliar_rf,
	ax2.aux_descripcion as smn_auxiliar_relacionado,
	smn_base.smn_auxiliar_sucursales.trs_responsable,
	smn_base.smn_auxiliar_sucursales.trs_telefono_fijo,
	smn_base.smn_auxiliar_sucursales.trs_telefono_movil,
	smn_base.smn_auxiliar_sucursales.trs_email,
	smn_base.smn_auxiliar_sucursales.trs_fecha_registro

from
	smn_base.smn_auxiliar_sucursales
	left join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar_sucursales.trs_direccion
	inner join smn_base.smn_auxiliar ax1 on ax1.smn_auxiliar_id = smn_base.smn_auxiliar_sucursales.smn_auxiliar_rf
	left join smn_base.smn_auxiliar ax2 on ax2.smn_auxiliar_id = smn_base.smn_auxiliar_sucursales.smn_auxiliar_relacionado
	inner join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_sucursales.smn_clase_auxiliar_rf
order by
	smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id desc
