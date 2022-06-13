document.form1.acf_codigo.value='${fld:acf_codigo@js}';
document.form1.acf_nombre.value='${fld:acf_nombre@js}';
setComboValue('acf_proveedor_exclusivo','${fld:acf_proveedor_exclusivo}','form1');
document.form1.id.value='${fld:smn_afijo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.acf_codigo.disabled=true;
 

