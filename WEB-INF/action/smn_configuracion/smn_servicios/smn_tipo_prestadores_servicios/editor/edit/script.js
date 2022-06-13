document.form1.tps_codigo.value='${fld:tps_codigo@js}';
document.form1.tps_descripcion.value='${fld:tps_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_prestadores_servicios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tps_codigo.disabled=true;
 

