document.form1.smn_terceros_id_name.value='${fld:ter_descripcion_corta_pl0@js}';
document.form1.smn_terceros_id.value='${fld:smn_terceros_id@#,###,###}';
document.form1.smn_app_id.value='${fld:smn_app_id@#,###,###}';
document.form1.trm_codigo.value='${fld:trm_codigo@js}';
document.form1.trm_nombre.value='${fld:trm_nombre@js}';
document.form1.id.value='${fld:smn_terceros_modulos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

