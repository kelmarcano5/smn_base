document.form1.age_codigo.value='${fld:age_codigo@js}';
document.form1.age_descripcion.value='${fld:age_descripcion@js}';
setComboValue('age_dia_semana','${fld:age_dia_semana}','form1');
document.form1.age_hora_desde.value='${fld:age_hora_desde@js}';
document.form1.age_hora_hasta.value='${fld:age_hora_hasta@js}';
document.form1.age_localidad.value='${fld:age_localidad@js}';
setComboValue('age_jornada','${fld:age_jornada}','form1');
document.form1.age_frecuencia.value='${fld:age_frecuencia@#,###,##0.00}';
document.form1.id.value='${fld:smn_agenda_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

