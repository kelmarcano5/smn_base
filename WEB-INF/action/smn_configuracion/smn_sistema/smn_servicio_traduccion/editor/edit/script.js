document.form1.set_app_id.value='${fld:set_app_id@#,###,###}';
document.form1.set_menu_id.value='${fld:set_menu_id@#,###,###}';
document.form1.set_servicio_id.value='${fld:set_servicio_id@#,###,###}';
document.form1.set_servicio.value='${fld:set_servicio@js}';
document.form1.id.value='${fld:smn_servicio_traduccion_id@#######}';

document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

