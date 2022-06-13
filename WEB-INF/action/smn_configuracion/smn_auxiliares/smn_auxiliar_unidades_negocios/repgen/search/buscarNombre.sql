select
		smn_base.smn_auxiliar_unidades_negocios.tun_nombre
from
		smn_base.smn_auxiliar_unidades_negocios
where
		upper(smn_base.smn_auxiliar_unidades_negocios.tun_nombre) = upper(${fld:tun_nombre})
