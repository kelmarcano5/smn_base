select
		smn_base.smn_condicion_financiera.cfi_codigo,
	smn_base.smn_condicion_financiera.cfi_description,
	smn_base.smn_condicion_financiera.cfi_cant_dias,
	smn_base.smn_condicion_financiera.cfi_limite_credito,
	smn_base.smn_condicion_financiera.cfi_porc_exceso_limite,
	smn_base.smn_condicion_financiera.cfi_valida_saldos_vec,
	smn_base.smn_condicion_financiera.cfi_dias_adic_saldos_venc,
	smn_base.smn_condicion_financiera.cfi_num_cheques_devuel,
	smn_base.smn_condicion_financiera.cfi_estatus,
	smn_base.smn_condicion_financiera.cfi_vigencia,
	smn_base.smn_condicion_financiera.cfi_fecha_registro
from
	smn_base.smn_condicion_financiera 
where
	smn_base.smn_condicion_financiera.smn_condicion_financiera_id = ${fld:id}
