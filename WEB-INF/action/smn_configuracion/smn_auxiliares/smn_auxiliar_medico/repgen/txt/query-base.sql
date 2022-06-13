select
	smn_base.smn_auxiliar_cond_financiera.cfn_descripcion,
	smn_base.smn_condicion_pago.cop_descripcion,
	smn_base.smn_cuentas_bancarias.cba_nombre,
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_paises.pai_gentilicio,
	${field}
from
	smn_base.smn_auxiliar_cond_financiera,
	smn_base.smn_condicion_pago,
	smn_base.smn_cuentas_bancarias,
	smn_base.smn_direccion,
	smn_base.smn_paises,
	smn_base.smn_auxiliar
where
	smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id = smn_base.smn_auxiliar.aux_condicion_financiera_rf and
	smn_base.smn_condicion_pago.smn_condicion_pago_id = smn_base.smn_auxiliar.aux_cond_pago_rf and
	smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id = smn_base.smn_auxiliar.aux_cuenta_bancaria_rf and
	smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar.aux_direccion_rf and
	smn_base.smn_paises.smn_paises_id = smn_base.smn_auxiliar.aux_nacionalidad_rf and
		smn_base.smn_auxiliar.smn_auxiliar_id is not null
