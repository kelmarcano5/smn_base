setComboValue('smn_entidades_id','${fld:smn_entidades_id}','form1');
setComboValue('smn_configuracion_estructura_id','${fld:smn_configuracion_estructura_id}','form1');
setComboValue('rec_status','${fld:rec_status}','form1');
document.form1.id.value='${fld:smn_rel_entidad_estructura_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

