document.form1.itm_codigo.value='${fld:itm_codigo@js}';
document.form1.itm_nombre.value='${fld:itm_nombre@js}';
document.form1.id.value='${fld:smn_item_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");



document.form1.itm_codigo.disabled=true;
 

