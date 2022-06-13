select
		smn_base.smn_estructura_codigo.eco_nombre
from
		smn_base.smn_estructura_codigo
where
		upper(smn_base.smn_estructura_codigo.eco_nombre) = upper(${fld:eco_nombre})
