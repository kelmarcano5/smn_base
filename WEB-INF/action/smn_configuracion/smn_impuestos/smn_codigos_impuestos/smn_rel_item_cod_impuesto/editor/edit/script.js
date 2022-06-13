setComboValue('smn_item_id','${fld:smn_item_id}','form1');
setComboValue('smn_codigos_impuestos_id','${fld:smn_codigos_impuestos_id}','form1');
document.form1.id.value='${fld:smn_rel_item_cod_impuesto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

