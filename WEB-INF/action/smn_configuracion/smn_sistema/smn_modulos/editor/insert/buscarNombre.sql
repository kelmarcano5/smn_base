select
		smn_base.smn_modulos.mod_nombre
from
		smn_base.smn_modulos
where
		upper(smn_base.smn_modulos.mod_nombre) = upper(${fld:mod_nombre})
