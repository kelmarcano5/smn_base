document.form1.tsr_codigo.value='${fld:tsr_codigo@js}';
document.form1.tsr_descripcion.value='${fld:tsr_descripcion@js}';
document.form1.id.value='${fld:smn_tipos_servicios_id@#######}';
setComboValue('tsr_servicio_afiliacion','${fld:tsr_servicio_afiliacion}','form1');
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tsr_codigo.disabled=true;
 

