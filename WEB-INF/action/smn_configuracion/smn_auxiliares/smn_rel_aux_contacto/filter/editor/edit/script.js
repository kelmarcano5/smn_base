setComboValue('smn_auxiliar_id','${fld:smn_auxiliar_id}','form1');
setComboValue('smn_auxiliar_contacto_id','${fld:smn_auxiliar_contacto_id}','form1');
document.form1.id.value='${fld:smn_rel_aux_contacto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

