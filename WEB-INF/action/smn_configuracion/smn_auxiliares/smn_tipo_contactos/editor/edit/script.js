document.form1.tco_codigo.value='${fld:tco_codigo@js}';
document.form1.tco_descripcion.value='${fld:tco_descripcion@js}';
setComboValue('tco_clase','${fld:tco_clase}','form1');
setComboValue('tco_envia_mensaje','${fld:tco_envia_mensaje}','form1');
document.form1.id.value='${fld:smn_tipo_contactos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tco_codigo.disabled=true;
 

