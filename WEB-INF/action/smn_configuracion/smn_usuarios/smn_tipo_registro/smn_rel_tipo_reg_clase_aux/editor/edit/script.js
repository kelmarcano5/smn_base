setComboValue('smn_tipo_registro_rf','${fld:smn_tipo_registro_rf}','form1');
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
document.form1.id.value='${fld:smn_rel_tipo_reg_clase_aux_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

