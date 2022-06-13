select
	smn_base.smn_auxiliar_corporaciones.tcp_nombre
from
	smn_base.smn_auxiliar_corporaciones
where
	upper(trim(smn_base.smn_auxiliar_corporaciones.tcp_nombre)) = upper(trim(${fld:tcp_nombre}))
