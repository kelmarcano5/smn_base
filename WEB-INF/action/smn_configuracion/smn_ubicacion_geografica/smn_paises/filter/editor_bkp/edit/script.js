document.form1.pai_codigo.value='${fld:pai_codigo@js}';
document.form1.pai_nombre_corto.value='${fld:pai_nombre_corto@js}';
document.form1.pai_nombre_largo.value='${fld:pai_nombre_largo@js}';
document.form1.pai_gentilicio.value='${fld:pai_gentilicio@js}';
document.form1.pai_codigo_ddi.value='${fld:pai_codigo_ddi@js}';
document.form1.pai_idioma_oficial.value='${fld:pai_idioma_oficial@#,###,###}';
document.form1.pai_moneda_oficial.value='${fld:pai_moneda_oficial@#,###,###}';
document.form1.id.value='${fld:smn_paises_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.pai_codigo.disabled=true;
 

