document.form1.cmn_codigo.value='${fld:cmn_codigo@js}';
document.form1.cmn_nombre.value='${fld:cmn_nombre@js}';
document.form1.cmn_unidad_negocio.value='${fld:cmn_unidad_negocio@#,###,###}';
document.form1.id.value='${fld:smn_comunidades_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

