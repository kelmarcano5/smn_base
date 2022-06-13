document.form1.gpp_codigo.value='${fld:gpp_codigo@js}';
document.form1.gpp_descripcion.value='${fld:gpp_descripcion@js}';
document.form1.gpp_area_servicio.value='${fld:gpp_area_servicio@#,###,###}';
document.form1.gpp_unidad_servicio.value='${fld:gpp_unidad_servicio@#,###,###}';
setComboValue('gpp_orden_atencion','${fld:gpp_orden_atencion}','form1');
document.form1.id.value='${fld:smn_grupos_prestadores_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

