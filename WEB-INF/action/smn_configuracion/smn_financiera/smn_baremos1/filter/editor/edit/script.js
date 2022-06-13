document.form1.bar_codigo.value='${fld:bar_codigo@js}';
document.form1.bar_descripcion.value='${fld:bar_descripcion@js}';
setComboValue('smn_entidades_rf','${fld:smn_entidades_rf}','form1');
setComboValue('smn_sucursales_rf','${fld:smn_sucursales_rf}','form1');
document.form1.bar_vigencia_desde.value='${fld:bar_vigencia_desde@dd-MM-yyyy}';
document.form1.bar_vigencia_hasta.value='${fld:bar_vigencia_hasta@dd-MM-yyyy}';
setComboValue('bar_tipo','${fld:bar_tipo}','form1');
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
setComboValue('bar_estatus','${fld:bar_estatus}','form1');
document.form1.id.value='${fld:smn_baremos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
setComboValue('smn_moneda_rf','${fld:smn_moneda_rf}','form1');

document.form1.bar_codigo.disabled=true;
 

