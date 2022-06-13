document.form1.prr_municipios.value='${fld:prr_municipios@#,###,###}';
document.form1.prr_codigo.value='${fld:prr_codigo@js}';
document.form1.prr_nombre_corto.value='${fld:prr_nombre_corto@js}';
document.form1.prr_nombre_largo.value='${fld:prr_nombre_largo@js}';
document.form1.id.value='${fld:smn_parroquias_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

