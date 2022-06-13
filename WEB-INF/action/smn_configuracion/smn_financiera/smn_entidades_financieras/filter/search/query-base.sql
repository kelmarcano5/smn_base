select	
	smn_base.smn_entidades_financieras.efi_nombre,
	smn_base.smn_direccion.dir_descripcion,
	case
		when smn_base.smn_entidades_financieras.efi_req_banco_intermediario='S' then '${lbl:b_yes}'
		when smn_base.smn_entidades_financieras.efi_req_banco_intermediario='N' then '${lbl:b_not}'
	end as efi_req_banco_intermediario_combo,
	smn_base.smn_entidades_financieras.efi_codigo,
	smn_base.smn_entidades_financieras.efi_fecha_registro,
	smn_base.smn_entidades_financieras.efi_nombre,
	smn_base.smn_entidades_financieras.efi_direccion,
	smn_base.smn_entidades_financieras.efi_telefono_fijo,
	smn_base.smn_entidades_financieras.efi_telefono_movil,
	smn_base.smn_entidades_financieras.efi_codigo_aba,
	smn_base.smn_entidades_financieras.efi_codigo_swift,
	smn_base.smn_entidades_financieras.efi_req_banco_intermediario,
	smn_base.v_entidades_financieras.efi_banco_intermediario,
	smn_base.smn_entidades_financieras.efi_routing,
	smn_base.smn_entidades_financieras.efi_contacto,
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id
from 
	smn_base.smn_entidades_financieras
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_entidades_financieras.efi_direccion
	left outer join smn_base.v_entidades_financieras on smn_base.v_entidades_financieras.smn_entidades_financieras_id = smn_base.smn_entidades_financieras.efi_banco_intermediario
where
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id is not null
and
	smn_base.smn_entidades_financieras.efi_idioma = '${def:locale}'
and
	smn_base.smn_entidades_financieras.efi_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id desc
	
