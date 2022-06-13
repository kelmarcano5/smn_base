select
		smn_base.smn_estructura_organizacional.eor_nombre
from
		smn_base.smn_estructura_organizacional
where
		upper(smn_base.smn_estructura_organizacional.eor_nombre) = upper(${fld:eor_nombre})
