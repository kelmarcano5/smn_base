document.form1.sec_codigo.value='${fld:sec_codigo@js}';
document.form1.sec_descripcion.value='${fld:sec_descripcion@js}';
document.form1.id.value='${fld:smn_sectores_economicos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

