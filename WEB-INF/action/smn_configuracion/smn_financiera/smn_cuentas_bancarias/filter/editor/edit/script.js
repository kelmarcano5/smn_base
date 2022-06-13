document.form1.cba_entidades_financieras.value='${fld:cba_entidades_financieras@#,###,###}';
document.form1.cba_codigo.value='${fld:cba_codigo@js}';
document.form1.cba_nombre.value='${fld:cba_nombre@js}';
document.form1.cba_nro_cuenta.value='${fld:cba_nro_cuenta@js}';
document.form1.cba_tipo_cta_banco.value='${fld:cba_tipo_cta_banco@#,###,###}';
document.form1.cba_moneda.value='${fld:cba_moneda@#,###,###}';
document.form1.id.value='${fld:smn_cuentas_bancarias_id@#######}';

setComboValue('cba_entidades_financieras','${fld:cba_entidades_financieras}','form1');
setComboValue('cba_moneda','${fld:cba_moneda}','form1');
setComboValue('cba_tipo_cta_banco','${fld:cba_tipo_cta_banco}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
setComboValue('smn_entidad_rf','${fld:smn_entidad_rf}','form1');
setComboValue('smn_sucursal_rf','${fld:smn_sucursal_rf}','form1');

 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.cba_codigo.disabled=true;
 

