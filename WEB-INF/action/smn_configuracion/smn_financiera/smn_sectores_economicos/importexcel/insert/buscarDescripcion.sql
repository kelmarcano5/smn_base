select
	smn_base.smn_sectores_economicos.sec_descripcion
from
	smn_base.smn_sectores_economicos
where
	upper(trim(smn_base.smn_sectores_economicos.sec_descripcion)) = upper(trim(${fld:sec_descripcion}))
