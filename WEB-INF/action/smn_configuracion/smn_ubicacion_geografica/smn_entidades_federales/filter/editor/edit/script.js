document.form1.efe_paises.value='${fld:efe_paises@#,###,###}';
document.form1.efe_codigo.value='${fld:efe_codigo@js}';
document.form1.efe_nombre_corto.value='${fld:efe_nombre_corto@js}';
document.form1.efe_nombre_largo.value='${fld:efe_nombre_largo@js}';
document.form1.id.value='${fld:smn_entidades_federales_id@#######}';

document.form1.efe_codigo.disabled=true;
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

