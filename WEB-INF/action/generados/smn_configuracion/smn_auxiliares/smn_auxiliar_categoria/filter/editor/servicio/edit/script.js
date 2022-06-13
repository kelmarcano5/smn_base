document.form1.aca_naturaleza_auxiliar.value='${fld:aca_naturaleza_auxiliar@#,###,###}';
setComboValue('aca_tipo_persona','${fld:aca_tipo_persona}','form1');
document.form1.aca_empresa.value='${fld:aca_empresa@#,###,###}';
document.form1.aca_sucursal.value='${fld:aca_sucursal@#,###,###}';
document.form1.aca_unidad_negocio.value='${fld:aca_unidad_negocio@#,###,###}';
document.form1.aca_area_servicio.value='${fld:aca_area_servicio@#,###,###}';
document.form1.aca_unidad_servicio.value='${fld:aca_unidad_servicio@#,###,###}';
document.form1.id.value='${fld:smn_auxiliar_categoria_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
detailView('detailsmn_auxiliar_prestador_servicio','2');

