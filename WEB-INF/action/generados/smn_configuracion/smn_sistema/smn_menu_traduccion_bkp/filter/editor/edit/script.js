document.form1.mnt_app_id.value='${fld:mnt_app_id@#,###,###}';
document.form1.mnt_menu_id.value='${fld:mnt_menu_id@#,###,###}';
document.form1.mnt_title.value='${fld:mnt_title@js}';
setComboValue('mnt_locale','${fld:mnt_locale}','form1');
document.form1.id.value='${fld:smn_menu_traduccion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

