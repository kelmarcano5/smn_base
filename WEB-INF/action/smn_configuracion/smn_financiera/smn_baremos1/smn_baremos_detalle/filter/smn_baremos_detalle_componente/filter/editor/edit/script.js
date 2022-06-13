setComboValue('smn_baremos_detalle_id','${fld:smn_baremos_detalle_id}','form1');
setComboValue('smn_tipo_compuesto_rf','${fld:smn_tipo_compuesto_rf}','form1');
setComboValue('smn_componente_rf','${fld:smn_componente_rf}','form1');
setComboValue('smn_servicios_rf','${fld:smn_servicios_rf}','form1');
setComboValue('smn_almacen_rf','${fld:smn_almacen_rf}','form1');
setComboValue('smn_item_rf','${fld:smn_item_rf}','form1');
setComboValue('smn_forma_calculo_rf','${fld:smn_forma_calculo_rf}','form1');
document.form1.smn_porcentaje_rf.value='${fld:smn_porcentaje_rf@#,###,##0.00}';
document.form1.bdc_cantidad.value='${fld:bdc_cantidad@#,###,###}';
document.form1.bdc_precio_ml.value='${fld:bdc_precio_ml@#,###,##0.00}';
document.form1.bdc_monto_ml.value='${fld:bdc_monto_ml@#,###,##0.00}';
setComboValue('smn_moneda_rf','${fld:smn_moneda_rf}','form1');
document.form1.bdc_precio_ma.value='${fld:bdc_precio_ma@#,###,##0.00}';
document.form1.bdc_monto_ma.value='${fld:bdc_monto_ma@#,###,##0.00}';
document.form1.id.value='${fld:smn_baremos_detalle_componente_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

