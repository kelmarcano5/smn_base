select
	smn_base.smn_tipo_cuenta_banco.tcb_descripcion
from
	smn_base.smn_tipo_cuenta_banco
where
	upper(trim(smn_base.smn_tipo_cuenta_banco.tcb_descripcion)) = upper(trim(${fld:tcb_descripcion}))
