document.form1.til_codigo.value='${fld:til_codigo@js}';
document.form1.til_descripcion.value='${fld:til_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_localidad_id@#######}';

document.form1.til_codigo.disabled=true;
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

