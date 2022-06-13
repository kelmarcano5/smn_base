select	
	smn_base.smn_auxiliar_cuenta_bancaria.acb_num_cuenta,
	smn_base.smn_auxiliar_cuenta_bancaria.acb_tipo_cta_banco,
	smn_base.smn_auxiliar_cuenta_bancaria.acb_respons_cuenta,
	smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece,
	smn_base.smn_auxiliar_cuenta_bancaria.acb_num_aba,
	smn_base.smn_auxiliar_cuenta_bancaria.acb_fecha_registro,
	smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id

from
	smn_base.smn_auxiliar_cuenta_bancaria
where
	smn_auxiliar_cuenta_bancaria_id is not null	
 	 	${filter}
order by 
	smn_auxiliar_cuenta_bancaria_id