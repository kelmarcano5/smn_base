document.form1.gpp_codigo.value='${fld:gpp_codigo@js}';
document.form1.gpp_descripcion.value='${fld:gpp_descripcion@js}';
document.form1.gpp_area_servicio.value='${fld:gpp_area_servicio@#,###,###}';
document.form1.gpp_unidad_servicio.value='${fld:gpp_unidad_servicio@#,###,###}';
setComboValue('gpp_orden_atencion','${fld:gpp_orden_atencion}','form1');
setComboValue('gpp_estatus','${fld:gpp_estatus}','form1');
document.form1.gpp_fecha_inicio_estatus.value='${fld:gpp_fecha_inicio_estatus@dd-MM-yyyy}';
document.form1.gpp_fecha_final_estatus.value='${fld:gpp_fecha_final_estatus@dd-MM-yyyy}';
document.form1.gpp_frecuencia.value='${fld:gpp_frecuencia@#######}';
document.form1.id.value='${fld:smn_grupos_prestadores_id@#######}';

setComboValue('gpp_is_pull','${fld:gpp_is_pull}','form1');
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

<rows>selectSmnEspecialidadId('${fld:smn_especialidad_id}','${fld:esp_codigo}');</rows>
<rows>selectSmnAgendaId('${fld:smn_agenda_id}','${fld:age_codigo}');</rows>

document.form1.gpp_codigo.disabled=true;
 

