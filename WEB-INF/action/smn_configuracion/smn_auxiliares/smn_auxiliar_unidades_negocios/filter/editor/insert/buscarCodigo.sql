select
		smn_base.smn_auxiliar_unidades_negocios.tun_codigo
from
		smn_base.smn_auxiliar_unidades_negocios
where
		upper(smn_base.smn_auxiliar_unidades_negocios.tun_codigo) = upper(${fld:tun_codigo})
