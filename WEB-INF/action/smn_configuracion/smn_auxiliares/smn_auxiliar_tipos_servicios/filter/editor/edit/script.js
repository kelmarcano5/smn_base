document.form1.tts_codigo.value='${fld:tts_codigo@js}';
document.form1.tts_descripcion.value='${fld:tts_descripcion@js}';
document.form1.id.value='${fld:smn_auxiliar_tipos_servicios_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tts_codigo.disabled=true;
 

