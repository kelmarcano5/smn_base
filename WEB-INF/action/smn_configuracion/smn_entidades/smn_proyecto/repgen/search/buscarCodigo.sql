select
		smn_base.smn_proyecto.pry_codigo
from
		smn_base.smn_proyecto
where
		upper(smn_base.smn_proyecto.pry_codigo) = upper(${fld:pry_codigo})
