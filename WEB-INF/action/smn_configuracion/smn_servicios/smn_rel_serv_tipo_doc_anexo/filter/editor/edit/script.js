setComboValue('smn_servicios_id','${fld:smn_servicios_id}','form1');
setComboValue('smn_tipo_doc_anexo_id','${fld:smn_tipo_doc_anexo_id}','form1');
document.form1.id.value='${fld:smn_rel_serv_tipo_doc_anexo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

