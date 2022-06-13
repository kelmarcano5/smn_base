document.form1.mct_modulo.value='${fld:mct_modulo@#,###,###}';
document.form1.mct_descripcion.value='${fld:mct_descripcion@js}';
document.form1.id.value='${fld:smn_modelos_contratos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

