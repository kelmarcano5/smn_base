select
	case
	when smn_base.smn_paso.pas_estatus_doc='A' then '${lbl:b_aprobado}'
	when smn_base.smn_paso.pas_estatus_doc='D' then '${lbl:b_desaprobado}'
	when smn_base.smn_paso.pas_estatus_doc='C' then '${lbl:b_cancelado}'
	end as pas_estatus_doc_combo,
	smn_base.smn_paso.*
from
	smn_base.smn_paso
where
	smn_paso_id = ${fld:id}
