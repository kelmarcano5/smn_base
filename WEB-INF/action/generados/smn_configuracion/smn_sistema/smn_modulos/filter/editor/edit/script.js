document.form1.mod_empresa.value='${fld:mod_empresa@#,###,###}';
document.form1.mod_codigo.value='${fld:mod_codigo@js}';
document.form1.mod_nombre.value='${fld:mod_nombre@js}';
document.form1.id.value='${fld:smn_modulos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

