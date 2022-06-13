select
		smn_base.smn_componentes.cmp_descripcion
from
		smn_base.smn_componentes
where
		upper(smn_base.smn_componentes.cmp_descripcion) = upper(${fld:cmp_descripcion})
