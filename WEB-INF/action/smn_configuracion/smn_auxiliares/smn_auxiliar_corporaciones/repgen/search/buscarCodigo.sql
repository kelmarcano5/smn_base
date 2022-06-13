select
		smn_base.smn_auxiliar_corporaciones.tcp_codigo
from
		smn_base.smn_auxiliar_corporaciones
where
		upper(smn_base.smn_auxiliar_corporaciones.tcp_codigo) = upper(${fld:tcp_codigo})
