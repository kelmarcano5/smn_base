select
		smn_base.smn_paso.pas_codigo,
	smn_base.smn_paso.pas_descripcion,
	smn_base.smn_paso.pas_cod_paso_anterior,
	smn_base.smn_paso.pas_cod_paso_siguiente,
	smn_base.smn_paso.pas_estatus_doc,
	smn_base.smn_paso.pas_fecha_registro
from
	smn_base.smn_paso 
where
	smn_base.smn_paso.smn_paso_id = ${fld:id}
