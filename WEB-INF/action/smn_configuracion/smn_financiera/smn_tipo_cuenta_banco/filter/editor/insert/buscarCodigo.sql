select
		smn_base.smn_tipo_cuenta_banco.tcb_codigo
from
		smn_base.smn_tipo_cuenta_banco
where
		upper(smn_base.smn_tipo_cuenta_banco.tcb_codigo) = upper(${fld:tcb_codigo})
