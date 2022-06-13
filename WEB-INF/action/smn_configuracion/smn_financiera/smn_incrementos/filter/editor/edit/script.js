document.form1.inc_codigo.value='${fld:inc_codigo@js}';
document.form1.inc_descripcion.value='${fld:inc_descripcion@js}';
//document.form1.smn_vencimiento_cabecera_id.value='${fld:smn_vencimiento_cabecera_id@#,###,###}';
setComboValue('smn_vencimiento_cabecera_id','${fld:smn_vencimiento_cabecera_id}','form1');
setComboValue('inc_apli_cant_precio','${fld:inc_apli_cant_precio}','form1');
document.form1.inc_monto_ml.value='${fld:inc_monto_ml@#,###,##0.00}';
document.form1.inc_monto_ma.value='${fld:inc_monto_ma@#,###,##0.00}';
document.form1.inc_porcentaje_base.value='${fld:inc_porcentaje_base@#,###,##0.00}';
document.form1.inc_porcentaje_incremento.value='${fld:inc_porcentaje_incremento@#,###,##0.00}';
setComboValue('inc_estatus','${fld:inc_estatus}','form1');
setComboValue('inc_apli_todos_it','${fld:inc_apli_todos_it}','form1');
setComboValue('inc_apli_todos_se','${fld:inc_apli_todos_se}','form1');
setComboValue('inc_apli_todos_af','${fld:inc_apli_todos_af}','form1');
document.form1.id.value='${fld:smn_incrementos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.inc_codigo.disabled=true;
 

