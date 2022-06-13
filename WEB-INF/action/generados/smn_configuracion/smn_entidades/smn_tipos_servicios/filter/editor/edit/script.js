document.form1.tsr_codigo.value='${fld:tsr_codigo@js}';
document.form1.tsr_descripcion.value='${fld:tsr_descripcion@js}';
document.form1.id.value='${fld:smn_tipos_servicios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

