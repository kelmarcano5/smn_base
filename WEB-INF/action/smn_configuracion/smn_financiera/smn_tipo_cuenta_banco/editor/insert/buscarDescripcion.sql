select
		smn_base.smn_tipo_cuenta_banco.tcb_descripcion
from
		smn_base.smn_tipo_cuenta_banco
where
		upper(smn_base.smn_tipo_cuenta_banco.tcb_descripcion) = upper(${fld:tcb_descripcion})
