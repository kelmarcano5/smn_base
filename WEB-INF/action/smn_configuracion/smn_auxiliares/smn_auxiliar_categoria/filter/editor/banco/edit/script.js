document.form1.aca_naturaleza_auxiliar.value='${fld:aca_naturaleza_auxiliar@#,###,###}';
setComboValue('aca_tipo_persona','${fld:aca_tipo_persona}','form1');
setComboValue('aca_empresa','${fld:aca_empresa}','form1');
setComboValue('aca_sucursal','${fld:aca_sucursal}','form1');
setComboValue('aca_unidad_negocio','${fld:aca_unidad_negocio}','form1');
setComboValue('aca_area_servicio','${fld:aca_area_servicio}','form1');
setComboValue('aca_unidad_servicio','${fld:aca_unidad_servicio}','form1');
document.form1.id.value='${fld:smn_auxiliar_categoria_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
detailView('detailsmn_auxiliar_banco','2');

