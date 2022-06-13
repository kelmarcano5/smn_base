document.form1.uim_codigo.value='${fld:uim_codigo@js}';
document.form1.uim_descripcion.value='${fld:uim_descripcion@js}';
document.form1.uim_moneda_referencia.value='${fld:uim_moneda_referencia@#,###,###}';
document.form1.id.value='${fld:smn_unidades_impositivas_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

