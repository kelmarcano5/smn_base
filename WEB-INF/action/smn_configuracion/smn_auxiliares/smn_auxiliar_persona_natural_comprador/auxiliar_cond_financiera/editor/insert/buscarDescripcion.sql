select
		smn_base.smn_auxiliar_cond_financiera.cfn_descripcion
from
		smn_base.smn_auxiliar_cond_financiera
where
		upper(smn_base.smn_auxiliar_cond_financiera.cfn_descripcion) = upper(${fld:cfn_descripcion})
