document.form1.smn_transaccion_general_id_name.value='${fld:trg_codigo_pl0@js}';
document.form1.smn_transaccion_general_id.value='${fld:smn_transaccion_general_id@#,###,###}';
document.form1.smn_entidades_id_name.value='${fld:ent_codigo_pl1@js}';
document.form1.smn_entidades_id.value='${fld:smn_entidades_id@#,###,###}';
document.form1.smn_app_id.value='${fld:smn_app_id@#,###,###}';
document.form1.mod_codigo.value='${fld:mod_codigo@js}';
document.form1.mod_nombre.value='${fld:mod_nombre@js}';
document.form1.id.value='${fld:smn_modulos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

