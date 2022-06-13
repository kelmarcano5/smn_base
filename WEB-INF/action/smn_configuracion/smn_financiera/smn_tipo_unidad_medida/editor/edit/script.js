document.form1.tum_codigo.value='${fld:tum_codigo@js}';
document.form1.tum_descripcion.value='${fld:tum_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_unidad_medida_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tum_codigo.disabled=true;
 

