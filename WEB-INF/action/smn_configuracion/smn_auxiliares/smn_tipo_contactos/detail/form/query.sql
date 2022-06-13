select
	case
	when smn_base.smn_tipo_contactos.tco_clase='TF' then '${lbl:b_phone}'
	when smn_base.smn_tipo_contactos.tco_clase='EM' then '${lbl:b_email}'
	when smn_base.smn_tipo_contactos.tco_clase='RS' then '${lbl:b_redsocial}'
	when smn_base.smn_tipo_contactos.tco_clase='OT' then '${lbl:b_others}'
	end as tco_clase_combo,
	smn_base.smn_tipo_contactos.*
from
	smn_base.smn_tipo_contactos
where
	smn_tipo_contactos_id = ${fld:id}
