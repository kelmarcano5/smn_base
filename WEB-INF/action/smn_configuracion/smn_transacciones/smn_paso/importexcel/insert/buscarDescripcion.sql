select
		smn_base.smn_paso.pas_descripcion
from
		smn_base.smn_paso
where
		upper(smn_base.smn_paso.pas_descripcion) = upper(${fld:pas_descripcion})
