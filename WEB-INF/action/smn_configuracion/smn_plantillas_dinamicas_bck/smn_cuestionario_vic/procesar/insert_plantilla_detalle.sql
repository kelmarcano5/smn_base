insert into smn_base.smn_plantilla_detalle(
 smn_plantilla_detalle_id,
  smn_plantilla_cabecera_id,
  smn_seccion_rf,
  pde_sec_seccion,
  smn_pregunta_rf,
  pde_sec_pregunta,
  pde_status,
  pde_idioma,
  pde_usuario,
  pde_fecha_registro,
  pde_hora
)
select
nextval('smn_base.seq_smn_plantilla_detalle'),
${fld:id_plantilla},
smn_base.smn_seccion.smn_seccion_id,
smn_base.smn_rel_cuestionario_seccion.rcs_secuencia,
smn_base.smn_pregunta.smn_pregunta_id,
smn_base.smn_rel_cues_secc_preg.csp_secuencia,
'AC',
'${def:locale}',
'${def:user}',
{d '${def:date}'},
'${def:time}'
from smn_base.smn_cuestionario
inner join smn_base.smn_rel_cuestionario_seccion on smn_base.smn_rel_cuestionario_seccion.smn_cuestionario_id=smn_base.smn_cuestionario.smn_cuestionario_id
inner join smn_base.smn_seccion on smn_base.smn_seccion.smn_seccion_id=smn_rel_cuestionario_seccion.smn_seccion_id
inner join smn_base.smn_rel_cues_secc_preg on smn_base.smn_rel_cues_secc_preg.smn_rel_cuestionario_seccion_id=smn_rel_cuestionario_seccion.smn_rel_cuestionario_seccion_id
inner join smn_base.smn_pregunta on smn_base.smn_pregunta.smn_pregunta_id=smn_base.smn_rel_cues_secc_preg.smn_pregunta_id

where
smn_base.smn_cuestionario.smn_cuestionario_id=${fld:smn_cuestionario_id}
order by rcs_secuencia asc, csp_secuencia asc
