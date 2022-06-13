document.form1.unm_codigo.value='${fld:unm_codigo@js}';
document.form1.unm_descripcion.value='${fld:unm_descripcion@js}';
setComboValue('smn_tipo_unidad_medida_rf','${fld:smn_tipo_unidad_medida_rf}','form1');
document.form1.id.value='${fld:smn_unidad_medida_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.unm_codigo.disabled=true;
 

