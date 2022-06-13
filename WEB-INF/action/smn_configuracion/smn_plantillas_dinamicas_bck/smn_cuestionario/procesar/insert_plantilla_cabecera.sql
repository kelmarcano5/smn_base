insert into smn_base.smn_plantilla_cabecera(
  smn_plantilla_cabecera_id,
  pca_codigo,
  pca_descripcion,
  smn_modulo_rf,
  pca_status,
  pca_idioma,
  pca_usuario,
  pca_fecha_registro,
  pca_hora
)
select
nextval('smn_base.seq_smn_plantilla_cabecera'),
cue_codigo,
cue_descripcion,
smn_modulo_rf,
'AC',
'${def:locale}',
'${def:user}',
{d '${def:date}'},
'${def:time}'
from smn_base.smn_cuestionario
where
smn_base.smn_cuestionario.smn_cuestionario_id=${fld:smn_cuestionario_id}

RETURNING smn_plantilla_cabecera_id as id_plantilla
