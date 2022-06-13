select
	smn_base.smn_auxiliar_cond_financiera.cfn_codigo
from
	smn_base.smn_auxiliar_cond_financiera
where
	upper(trim(smn_base.smn_auxiliar_cond_financiera.cfn_codigo)) = upper(trim(${fld:cfn_codigo}))
