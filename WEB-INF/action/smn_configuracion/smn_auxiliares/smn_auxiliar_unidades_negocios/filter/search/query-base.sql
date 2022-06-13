select
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_auxiliar_unidades_negocios.tun_codigo,
	smn_base.smn_auxiliar_unidades_negocios.tun_nombre,
	smn_base.smn_auxiliar.aux_codigo||'-'||smn_base.smn_auxiliar.aux_descripcion  as smn_auxiliar_rf,
	smn_base.smn_clase_auxiliar.cla_codigo||'-'||smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_auxiliar_unidades_negocios.tun_responsable,
	smn_base.smn_auxiliar_unidades_negocios.tun_direccion,
	smn_base.smn_auxiliar_unidades_negocios.tun_telefono_fijo,
	smn_base.smn_auxiliar_unidades_negocios.tun_telefono_movil,
	smn_base.smn_auxiliar_unidades_negocios.tun_email,
	smn_base.smn_auxiliar_unidades_negocios.tun_fecha_registro,
		smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id
from
	smn_base.smn_direccion,
	smn_base.smn_auxiliar_unidades_negocios
	left outer join smn_base.smn_auxiliar on smn_base.smn_auxiliar.smn_auxiliar_id=smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_auxiliar_unidades_negocios.smn_clase_auxiliar_rf

where
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id is not null
and
	smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar_unidades_negocios.tun_direccion 	
and
	smn_base.smn_auxiliar_unidades_negocios.tun_idioma = '${def:locale}'
and
	smn_base.smn_auxiliar_unidades_negocios.tun_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id desc
