var prs_clase_auxiliar = '${fld:prs_clase_auxiliar}';
$('#prs_clase_auxiliar').val(prs_clase_auxiliar).trigger('change');

var prs_auxiliar = '${fld:prs_auxiliar}';
$('#prs_auxiliar').val(prs_auxiliar).trigger('change');

document.form1.prs_codigo.value='${fld:prs_codigo@js}';
document.form1.prs_descripcion.value='${fld:prs_descripcion@js}';;
document.form1.prs_area_servicio.value='${fld:prs_area_servicio@#,###,###}';
document.form1.prs_unidad_servicio.value='${fld:prs_unidad_servicio@#,###,###}';
document.form1.prs_clase_auxiliar.value='${fld:prs_clase_auxiliar@#,###,###}';
document.form1.prs_auxiliar.value='${fld:prs_auxiliar@#,###,###}';
setComboValue('prs_orden_atencion','${fld:prs_orden_atencion}','form1');
setComboValue('prs_estatus','${fld:prs_estatus}','form1');
setComboValue('smn_tipo_prestadores_servicios_rf','${fld:smn_tipo_prestadores_servicios_rf}','form1');
setComboValue('prs_nivel_seguridad','${fld:prs_nivel_seguridad}','form1');
document.form1.prs_fecha_inicio_estatus.value='${fld:prs_fecha_inicio_estatus@dd-MM-yyyy}';
document.form1.prs_fecha_final_estatus.value='${fld:prs_fecha_final_estatus@dd-MM-yyyy}';
document.form1.prs_frecuencia.value='${fld:prs_frecuencia@#,###,##0.00}';
document.form1.id.value='${fld:smn_prestadores_servicios_id@#######}';

document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

<rows>selectSmnEspecialidadId('${fld:smn_especialidad_id}','${fld:esp_codigo}');</rows>

<rows>selectSmnAgendaId('${fld:smn_agenda_id}','${fld:age_codigo}');</rows>

document.form1.prs_codigo.disabled=true;

<rows>selectSmnGruposPrestadoresId('${fld:smn_grupos_prestadores_id}','${fld:gpp_codigo}');</rows>
 
<rows>selectSmnComponentesId('${fld:smn_componentes_id}','${fld:cmp_codigo}');</rows>
