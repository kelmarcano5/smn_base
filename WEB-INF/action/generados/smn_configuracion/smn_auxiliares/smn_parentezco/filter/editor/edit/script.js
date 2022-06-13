document.form1.ptz_codigo.value='${fld:ptz_codigo@js}';
document.form1.ptz_descripcion.value='${fld:ptz_descripcion@js}';
document.form1.id.value='${fld:smn_parentezco_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

