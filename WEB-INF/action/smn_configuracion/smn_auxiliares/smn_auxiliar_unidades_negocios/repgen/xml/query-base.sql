select
	smn_base.smn_direccion.dir_descripcion,
	${field}
from
	smn_base.smn_direccion,
	smn_base.smn_auxiliar_unidades_negocios
where
	smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar_unidades_negocios.tun_direccion and
		smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id is not null
