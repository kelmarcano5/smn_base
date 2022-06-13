setComboValue('smn_unidad_medida_origen_rf','${fld:smn_unidad_medida_origen_rf}','form1');
setComboValue('smn_unidad_medida_destino_rf','${fld:smn_unidad_medida_destino_rf}','form1');
document.form1.cou_factor_conversion.value='${fld:cou_factor_conversion@#,###,##0.00}';
setComboValue('cou_signo_conversion','${fld:cou_signo_conversion}','form1');
document.form1.id.value='${fld:smn_conversion_unidad_medida_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

