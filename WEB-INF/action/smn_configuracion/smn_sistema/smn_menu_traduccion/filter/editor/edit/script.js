document.form1.mnt_app_id.value='${fld:mnt_app_id@#,###,###}';
document.form1.mnt_menu_id.value='${fld:mnt_menu_id@#,###,###}';
document.form1.mnt_title.value='${fld:mnt_title@js}';
document.form1.id.value='${fld:smn_menu_traduccion_id@#######}';

document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

setComboValue('mnt_tipo','${fld:mnt_tipo}','form1');