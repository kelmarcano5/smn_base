select
		smn_base.smn_unidades_negocios.uen_nombre
from
		smn_base.smn_unidades_negocios
where
		upper(smn_base.smn_unidades_negocios.uen_nombre) = upper(${fld:uen_nombre})
