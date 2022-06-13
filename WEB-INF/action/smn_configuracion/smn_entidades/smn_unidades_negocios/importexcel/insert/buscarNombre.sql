select
		smn_base.smn_unidades_negocios.uen_nombre
from
		smn_base.smn_unidades_negocios
where
		upper(trim(smn_base.smn_unidades_negocios.uen_nombre)) = upper(trim(${fld:uen_nombre}))
