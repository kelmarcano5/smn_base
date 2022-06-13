select
		smn_base.smn_proyecto.pry_nombre
from
		smn_base.smn_proyecto
where
		upper(smn_base.smn_proyecto.pry_nombre) = upper(${fld:pry_nombre})
