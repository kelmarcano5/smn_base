select
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_auxiliar_unidades_negocios.*
from
	smn_base.smn_direccion,
	smn_base.smn_auxiliar_unidades_negocios
where
	smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar_unidades_negocios.tun_direccion and
	smn_auxiliar_unidades_negocios_id = ${fld:id}
