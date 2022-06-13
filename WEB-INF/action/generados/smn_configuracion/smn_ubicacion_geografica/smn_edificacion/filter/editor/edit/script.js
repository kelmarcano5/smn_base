document.form1.edf_codigo.value='${fld:edf_codigo@js}';
document.form1.edf_descripcion.value='${fld:edf_descripcion@js}';
document.form1.id.value='${fld:smn_edificacion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

