select
		smn_base.smn_areas_servicios.ase_descripcion
from
		smn_base.smn_areas_servicios
where
		upper(smn_base.smn_areas_servicios.ase_descripcion) = upper(${fld:ase_descripcion})
