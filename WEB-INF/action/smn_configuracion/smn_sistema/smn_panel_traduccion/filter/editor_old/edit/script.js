setComboValue('pat_panel','${fld:pat_panel}','form1');
document.form1.pat_description.value='${fld:pat_description@js}';
setComboValue('pat_locale','${fld:pat_locale}','form1');
document.form1.id.value='${fld:smn_panel_traduccion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

