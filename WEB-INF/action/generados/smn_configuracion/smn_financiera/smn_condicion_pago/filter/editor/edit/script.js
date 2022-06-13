document.form1.cop_codigo.value='${fld:cop_codigo@js}';
document.form1.cop_descripcion.value='${fld:cop_descripcion@js}';
document.form1.id.value='${fld:smn_condicion_pago_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

