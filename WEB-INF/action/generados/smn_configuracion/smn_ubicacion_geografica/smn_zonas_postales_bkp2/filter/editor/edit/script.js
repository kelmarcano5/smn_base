document.form1.zpo_parroquias.value='${fld:zpo_parroquias@#,###,###}';
document.form1.zpo_codigo.value='${fld:zpo_codigo@js}';
document.form1.id.value='${fld:smn_zonas_postales_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

