select
		smn_base.smn_paso.smn_paso_id,
	case
	when smn_base.smn_paso.pas_estatus_doc='A' then '${lbl:b_aprobado}'
	when smn_base.smn_paso.pas_estatus_doc='D' then '${lbl:b_desaprobado}'
	when smn_base.smn_paso.pas_estatus_doc='C' then '${lbl:b_cancelado}'
	end as pas_estatus_doc_combo,
	smn_base.smn_paso.pas_codigo,
	smn_base.smn_paso.pas_descripcion,
	smn_base.smn_paso.pas_cod_paso_anterior,
	smn_base.smn_paso.pas_cod_paso_siguiente,
	smn_base.smn_paso.pas_estatus_doc,
	smn_base.smn_paso.pas_fecha_registro
	
from
	smn_base.smn_paso
