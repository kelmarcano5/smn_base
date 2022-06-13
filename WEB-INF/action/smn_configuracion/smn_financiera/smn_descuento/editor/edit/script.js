document.form1.dct_codigo.value='${fld:dct_codigo@js}';
document.form1.dct_nombre.value='${fld:dct_nombre@js}';
document.form1.dct_porcentaje.value='${fld:dct_porcentaje@#,###,##0.00}';
setComboValue('dct_aplica','${fld:dct_aplica}','form1');
document.form1.id.value='${fld:smn_descuento_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.dct_codigo.disabled=true;
 

