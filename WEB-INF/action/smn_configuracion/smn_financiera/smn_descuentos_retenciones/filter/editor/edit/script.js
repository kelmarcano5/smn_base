document.form1.dyr_codigo.value='${fld:dyr_codigo@js}';
document.form1.dyr_descripcion.value='${fld:dyr_descripcion@js}';
document.form1.smn_vencimiento_cabecera_id.value='${fld:smn_vencimiento_cabecera_id@#,###,###}';
setComboValue('dyr_apli_cant_precio','${fld:dyr_apli_cant_precio}','form1');
setComboValue('smn_vencimiento_cabecera_id','${fld:smn_vencimiento_cabecera_id}','form1');
document.form1.dyr_porcentaje_base.value='${fld:dyr_porcentaje_base@#,###,##0.00}';
document.form1.dyr_porcentaje_descuento.value='${fld:dyr_porcentaje_descuento@#,###,##0.00}';
setComboValue('dyr_estatus','${fld:dyr_estatus}','form1');
document.form1.dyr_vigencia.value='${fld:dyr_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_descuentos_retenciones_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.dyr_codigo.disabled=true;
 

setComboValue('dyr_apli_todos_it','${fld:dyr_apli_todos_it}','form1');
setComboValue('dyr_apli_todos_se','${fld:dyr_apli_todos_se}','form1');
setComboValue('dyr_apli_todos_af','${fld:dyr_apli_todos_af}','form1');