document.form1.imp_codigo.value='${fld:imp_codigo@js}';
document.form1.imp_descripcion.value='${fld:imp_descripcion@js}';
setComboValue('imp_tipo_codigo','${fld:imp_tipo_codigo}','form1');
setComboValue('imp_modalidad_registro','${fld:imp_modalidad_registro}','form1');
document.form1.imp_porcentaje_base.value='${fld:imp_porcentaje_base@#,###,##0.00}';
document.form1.imp_porcentaje_calculo.value='${fld:imp_porcentaje_calculo@#,###,##0.00}';
setComboValue('imp_tipo_libro','${fld:imp_tipo_libro}','form1');
setComboValue('imp_tipo_persona','${fld:imp_tipo_persona}','form1');
setComboValue('imp_tipo_contribuyente','${fld:imp_tipo_contribuyente}','form1');
setComboValue('imp_ui_minima','${fld:imp_ui_minima}','form1');
setComboValue('imp_ui_maxima','${fld:imp_ui_maxima}','form1');
document.form1.imp_unidad_impositiva.value='${fld:imp_unidad_impositiva@#,###,###}';
//document.form1.imp_ui_minima.value='${fld:imp_ui_minima@#,###,##0.00}';
//document.form1.imp_ui_maxima.value='${fld:imp_ui_maxima@#,###,##0.00}';
document.form1.imp_ui_sustraendo.value='${fld:imp_ui_sustraendo@#,###,##0.00}';
document.form1.imp_monto_minimo.value='${fld:imp_monto_minimo@#,###,##0.00}';
document.form1.imp_monto_maximo.value='${fld:imp_monto_maximo@#,###,##0.00}';
document.form1.imp_monto_sustraendo.value='${fld:imp_monto_sustraendo@#,###,##0.00}';
document.form1.id.value='${fld:smn_codigos_impuestos_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.imp_codigo.disabled=true;
 

