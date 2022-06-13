select	
	smn_base.smn_terceros.smn_terceros_id, 
	smn_base.smn_terceros.ter_descripcion_corta as ter_descripcion_corta_pl0,
	smn_base.smn_terceros_sucursales.smn_terceros_id,
	smn_base.smn_terceros_sucursales.trs_hora,
	smn_base.smn_terceros_sucursales.trs_codigo,
	smn_base.smn_terceros_sucursales.trs_nombre,
	smn_base.smn_terceros_sucursales.trs_responsable,
	smn_base.smn_terceros_sucursales.trs_direccion,
	smn_base.smn_terceros_sucursales.trs_telefono_fijo,
	smn_base.smn_terceros_sucursales.trs_telefono_movil,
	smn_base.smn_terceros_sucursales.trs_email,
	smn_base.smn_terceros_sucursales.trs_idioma,
	smn_base.smn_terceros_sucursales.trs_usuario,
	smn_base.smn_terceros_sucursales.trs_fecha_registro,
	smn_base.smn_terceros_sucursales.smn_terceros_sucursales_id

from
	smn_base.smn_terceros,
	smn_base.smn_terceros_sucursales
where
	smn_terceros_sucursales_id is not null	
and 	smn_base.smn_terceros.smn_terceros_id=smn_base.smn_terceros_sucursales.smn_terceros_id 
	 	${filter}
order by 
	smn_terceros_sucursales_id