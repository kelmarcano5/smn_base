select
		smn_base.smn_sectores_economicos.sec_descripcion
from
		smn_base.smn_sectores_economicos
where
		upper(smn_base.smn_sectores_economicos.sec_descripcion) = upper(${fld:sec_descripcion})
