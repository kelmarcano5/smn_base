select
	smn_base.smn_tipo_cuenta_banco.tcb_codigo
from
	smn_base.smn_tipo_uenta_banco
where
	upper(trim(smn_base.smn_tipo_cuenta_banco.tcb_codigo)) = upper(trim(${fld:tcb_codigo}))
