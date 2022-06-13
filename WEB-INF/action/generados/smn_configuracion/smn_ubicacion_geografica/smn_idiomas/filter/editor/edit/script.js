document.form1.idi_codigo.value='${fld:idi_codigo@js}';
document.form1.idi_descripcion.value='${fld:idi_descripcion@js}';
document.form1.id.value='${fld:smn_idiomas_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

