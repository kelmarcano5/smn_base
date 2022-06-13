select
		smn_base.smn_auxiliar_cond_financiera.cfn_codigo
from
		smn_base.smn_auxiliar_cond_financiera
where
		upper(smn_base.smn_auxiliar_cond_financiera.cfn_codigo) = upper(${fld:cfn_codigo})
