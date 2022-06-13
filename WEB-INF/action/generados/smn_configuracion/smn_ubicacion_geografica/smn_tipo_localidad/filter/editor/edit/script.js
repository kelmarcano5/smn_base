document.form1.til_codigo.value='${fld:til_codigo@js}';
document.form1.til_descripcion.value='${fld:til_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_localidad_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

