document.form1.ctr_codigo.value='${fld:ctr_codigo@js}';
document.form1.ctr_nombre.value='${fld:ctr_nombre@js}';
setComboValue('ctr_transaccion_rf','${fld:ctr_transaccion_rf}','form1');
setComboValue('ctr_tipo','${fld:ctr_tipo}','form1');
document.form1.ctr_consecutivo.value='${fld:ctr_consecutivo@#,###,###}';
document.form1.ctr_fecha_inicio.value='${fld:ctr_fecha_inicio@dd-MM-yyyy}';
document.form1.ctr_fec_registro.value='${fld:ctr_fec_registro@dd-MM-yyyy}';
document.form1.ctr_fecha_vencimiento.value='${fld:ctr_fecha_vencimiento@dd-MM-yyyy}';
document.form1.ctr_dias_renovacion.value='${fld:ctr_dias_renovacion@#,###,###}';
document.form1.ctr_frecuencia_pago_dias.value='${fld:ctr_frecuencia_pago_dias@#,###,###}';
setComboValue('ctr_moneda_rf','${fld:ctr_moneda_rf}','form1');
document.form1.ctr_monto_otra_moneda.value='${fld:ctr_monto_otra_moneda@######000}';
setComboValue('ctr_corporacion_rf','${fld:ctr_corporacion_rf}','form1');
setComboValue('ctr_empresa_rf','${fld:ctr_empresa_rf}','form1');
setComboValue('ctr_sucursal_rf','${fld:ctr_sucursal_rf}','form1');
setComboValue('ctr_area_servicio_rf','${fld:ctr_area_servicio_rf}','form1');
setComboValue('ctr_unidad_servicio_rf','${fld:ctr_unidad_servicio_rf}','form1');
setComboValue('ctr_centro_costo_rf','${fld:ctr_centro_costo_rf}','form1');
document.form1.ctr_observaciones.value='${fld:ctr_observaciones@js}';
setComboValue('ctr_vigencia','${fld:ctr_vigencia}','form1');
document.form1.id.value='${fld:smn_contrato_base_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.ctr_codigo.disabled=true;
 

