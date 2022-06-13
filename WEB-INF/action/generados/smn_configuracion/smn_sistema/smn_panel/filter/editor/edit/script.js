document.form1.pan_service_description.value='${fld:pan_service_description@js}';
document.form1.pan_service_path.value='${fld:pan_service_path@js}';
document.form1.pan_icon_path.value='${fld:pan_icon_path@js}';
document.form1.pan_app_id.value='${fld:pan_app_id@#,###,###}';
document.form1.pan_role_id.value='${fld:pan_role_id@#,###,###}';
document.form1.pan_orden.value='${fld:pan_orden@#,###,###}';
document.form1.id.value='${fld:smn_panel_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

