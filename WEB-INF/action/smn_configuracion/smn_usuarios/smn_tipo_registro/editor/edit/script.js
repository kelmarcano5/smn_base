setComboValue('smn_roles_rf','${fld:smn_roles_rf}','form1');
document.form1.trg_codigo.value='${fld:trg_codigo@js}';
document.form1.trg_descripcion.value='${fld:trg_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_registro_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.trg_codigo.disabled=true;
 

