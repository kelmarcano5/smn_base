select
		smn_base.smn_areas_servicios.ase_codigo
from
		smn_base.smn_areas_servicios
where
		upper(smn_base.smn_areas_servicios.ase_codigo) = upper(${fld:ase_codigo})
