document.form1.mun_ciudades.value='${fld:mun_ciudades@#,###,###}';
document.form1.mun_codigo.value='${fld:mun_codigo@js}';
document.form1.mun_nombre_corto.value='${fld:mun_nombre_corto@js}';
document.form1.mun_nombre_largo.value='${fld:mun_nombre_largo@js}';
document.form1.id.value='${fld:smn_municipios_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.form1.mun_codigo.disabled=true;

