setComboValue('smn_descuentos_retenciones_id','${fld:smn_descuentos_retenciones_id}','form1');
setComboValue('smn_servicios_id','${fld:smn_servicios_id}','form1');
document.form1.id.value='${fld:smn_rel_serv_desc_retenc_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

