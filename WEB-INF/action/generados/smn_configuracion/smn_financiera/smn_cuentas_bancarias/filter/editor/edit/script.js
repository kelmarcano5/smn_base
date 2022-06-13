document.form1.cba_entidades_financieras.value='${fld:cba_entidades_financieras@#,###,###}';
document.form1.cba_codigo.value='${fld:cba_codigo@js}';
document.form1.cba_nombre.value='${fld:cba_nombre@js}';
document.form1.cba_nro_cuenta.value='${fld:cba_nro_cuenta@js}';
document.form1.cba_tipo_cta_banco.value='${fld:cba_tipo_cta_banco@#,###,###}';
document.form1.cba_moneda.value='${fld:cba_moneda@#,###,###}';
document.form1.id.value='${fld:smn_cuentas_bancarias_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

