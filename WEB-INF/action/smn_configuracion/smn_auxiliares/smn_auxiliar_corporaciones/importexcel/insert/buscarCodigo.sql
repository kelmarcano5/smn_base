select
	smn_base.smn_auxiliar_corporaciones.tcp_codigo
from
	smn_base.smn_auxiliar_corporaciones
where
	upper(trim(smn_base.smn_auxiliar_corporaciones.tcp_codigo)) = upper(trim(${fld:tcp_codigo}))
