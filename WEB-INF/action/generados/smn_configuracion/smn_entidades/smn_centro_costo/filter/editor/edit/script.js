document.form1.cco_codigo.value='${fld:cco_codigo@js}';
document.form1.cco_descripcion_corta.value='${fld:cco_descripcion_corta@js}';
document.form1.cco_descripcion_larga.value='${fld:cco_descripcion_larga@js}';
document.form1.cco_empresa.value='${fld:cco_empresa@#,###,###}';
document.form1.cco_sucursal.value='${fld:cco_sucursal@#,###,###}';
document.form1.cco_area_servicio.value='${fld:cco_area_servicio@#,###,###}';
document.form1.cco_unidad_servicio.value='${fld:cco_unidad_servicio@#,###,###}';
document.form1.cco_almacen.value='${fld:cco_almacen@#,###,###}';
setComboValue('cco_nivel','${fld:cco_nivel}','form1');
document.form1.id.value='${fld:smn_centro_costo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

