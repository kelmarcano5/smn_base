document.form1.age_codigo.value='${fld:age_codigo@js}';
document.form1.age_descripcion.value='${fld:age_descripcion@js}';
setComboValue('age_dia_semana','${fld:age_dia_semana}','form1');
setComboValue('age_dia_semana_en','${fld:age_dia_semana_en}','form1');
document.form1.age_hora_desde.value='${fld:age_hora_desde@js}';
setComboValue('age_jornada_desde','${fld:age_jornada_desde}','form1');
document.form1.age_hora_hasta.value='${fld:age_hora_hasta@js}';
setComboValue('age_jornada_hasta','${fld:age_jornada_hasta}','form1');
document.form1.age_localidad.value='${fld:age_localidad@js}';
document.form1.id.value='${fld:smn_agenda_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.age_codigo.disabled=true;
 

