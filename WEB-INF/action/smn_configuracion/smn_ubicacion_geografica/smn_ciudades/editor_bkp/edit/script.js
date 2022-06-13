document.form1.ciu_entidades_federales.value='${fld:ciu_entidades_federales@#,###,###}';
document.form1.ciu_codigo.value='${fld:ciu_codigo@js}';
document.form1.ciu_nombre_corto.value='${fld:ciu_nombre_corto@js}';
document.form1.ciu_nombre_largo.value='${fld:ciu_nombre_largo@js}';
document.form1.id.value='${fld:smn_ciudades_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.ciu_codigo.disabled=true;
 

