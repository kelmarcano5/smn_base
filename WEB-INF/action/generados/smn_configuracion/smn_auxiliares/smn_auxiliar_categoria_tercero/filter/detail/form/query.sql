select	
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id, 
	smn_base.smn_auxiliar_categoria.aca_tipo_persona as aca_tipo_persona_pl0,
	case
		when smn_base.smn_auxiliar_tercero.atr_maneja_sucursal='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_tercero.atr_maneja_sucursal='N' then '${lbl:b_not}'
	end as atr_maneja_sucursal_combo,
	case
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='A' then '${lbl:b_type} A'
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='B' then '${lbl:b_type} B'
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='C' then '${lbl:b_type} C'
	end as atr_clasif_abc_combo,
	case
		when smn_base.smn_auxiliar_tercero.atr_tipo_facturac='CO' then '${lbl:b_billing_joint}'
		when smn_base.smn_auxiliar_tercero.atr_tipo_facturac='SE' then '${lbl:b_billing_separated}'
	end as atr_tipo_facturac_combo,
	smn_base.smn_auxiliar_tercero.*
from
	smn_base.smn_auxiliar_categoria,
	smn_base.smn_auxiliar_tercero 
where
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id 
 and 
	smn_auxiliar_tercero_id = ${fld:id}
