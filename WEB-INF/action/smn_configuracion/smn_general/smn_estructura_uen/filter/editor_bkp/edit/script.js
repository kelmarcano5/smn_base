setComboValue('eue_aplica_uen','${fld:eue_aplica_uen}','form1');
setComboValue('eue_aplica_auxiliar_uen','${fld:eue_aplica_auxiliar_uen}','form1');
document.form1.id.value='${fld:smn_estructura_uen_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

