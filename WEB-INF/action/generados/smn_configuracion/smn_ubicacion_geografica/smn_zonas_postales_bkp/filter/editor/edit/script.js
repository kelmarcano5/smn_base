document.form1.zpo_ciudades.value='${fld:zpo_ciudades@#,###,###}';
document.form1.zpo_codigo.value='${fld:zpo_codigo@js}';
document.form1.id.value='${fld:smn_zonas_postales_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

