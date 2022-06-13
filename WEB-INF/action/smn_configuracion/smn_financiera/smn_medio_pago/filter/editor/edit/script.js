document.form1.mpa_codigo.value='${fld:mpa_codigo@js}';
document.form1.mpa_descripcion.value='${fld:mpa_descripcion@js}';
setComboValue('mpa_tipo_medio_pago','${fld:mpa_tipo_medio_pago}','form1');
setComboValue('mpa_estatus','${fld:mpa_estatus}','form1');
document.form1.mpa_vigencia.value='${fld:mpa_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_medio_pago_id@#,###,###}';
setComboValue('mpa_moneda_alterna','${fld:mpa_moneda_alterna}','form1');
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.mpa_codigo.disabled=true;
 

