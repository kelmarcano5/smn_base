setComboValue('zpo_parroquias','${fld:zpo_parroquias}','form1');
document.form1.zpo_codigo.value='${fld:zpo_codigo@js}';
document.form1.zpo_sector.value='${fld:zpo_sector@js}';
document.form1.id.value='${fld:smn_zonas_postales_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.zpo_codigo.disabled=true;
 

