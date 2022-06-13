document.form1.mon_codigo.value='${fld:mon_codigo@js}';
document.form1.mon_nombre.value='${fld:mon_nombre@js}';
document.form1.id.value='${fld:smn_monedas_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

