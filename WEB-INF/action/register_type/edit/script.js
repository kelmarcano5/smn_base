document.form1.trg_codigo.value='${fld:trg_codigo@js}';
document.form1.trg_descripcion.value='${fld:trg_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_registro_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

