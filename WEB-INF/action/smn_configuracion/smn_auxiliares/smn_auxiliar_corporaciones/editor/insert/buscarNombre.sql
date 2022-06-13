select
		smn_base.smn_auxiliar_corporaciones.tcp_nombre
from
		smn_base.smn_auxiliar_corporaciones
where
		upper(smn_base.smn_auxiliar_corporaciones.tcp_nombre) = upper(${fld:tcp_nombre})
