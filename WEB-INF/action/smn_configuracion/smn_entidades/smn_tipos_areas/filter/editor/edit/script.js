document.form1.tar_codigo.value='${fld:tar_codigo@js}';
document.form1.tar_descripcion.value='${fld:tar_descripcion@js}';
document.form1.id.value='${fld:smn_tipos_areas_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tar_codigo.disabled=true;
 

