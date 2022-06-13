select
	smn_base.smn_auxiliar_cond_financiera.cfn_descripcion
from
	smn_base.smn_auxiliar_cond_financiera
where
	upper(trim(smn_base.smn_auxiliar_cond_financiera.cfn_descripcion)) = upper(trim(${fld:cfn_descripcion}))
