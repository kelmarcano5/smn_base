document.form1.alm_codigo.value='${fld:alm_codigo@js}';
document.form1.alm_nombre.value='${fld:alm_nombre@js}';
document.form1.id.value='${fld:smn_almacen_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

