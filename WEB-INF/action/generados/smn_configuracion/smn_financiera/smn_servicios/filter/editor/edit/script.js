document.form1.svc_codigo.value='${fld:svc_codigo@js}';
document.form1.svc_descripcion.value='${fld:svc_descripcion@js}';
document.form1.svc_clase_auxiliar.value='${fld:svc_clase_auxiliar@#,###,###}';
document.form1.svc_tipo_servicio.value='${fld:svc_tipo_servicio@#,###,###}';
document.form1.svc_area_servicio.value='${fld:svc_area_servicio@#,###,###}';
document.form1.svc_unidad_servicio.value='${fld:svc_unidad_servicio@#,###,###}';
document.form1.svc_centro_costo.value='${fld:svc_centro_costo@#,###,###}';
document.form1.svc_frecuencia.value='${fld:svc_frecuencia@#,###,##0.00}';
document.form1.svc_precio_general.value='${fld:svc_precio_general@#,###,##0.00}';
setComboValue('svc_inactivo','${fld:svc_inactivo}','form1');
setComboValue('svc_req_honorario','${fld:svc_req_honorario}','form1');
document.form1.svc_vigencia_desde.value='${fld:svc_vigencia_desde@dd-MM-yyyy}';
document.form1.svc_vigencia_hasta.value='${fld:svc_vigencia_hasta@dd-MM-yyyy}';
document.form1.svc_requisitos.value='${fld:svc_requisitos@js}';
document.form1.svc_trans_general.value='${fld:svc_trans_general@#,###,###}';
document.form1.svc_compuesto.value='${fld:svc_compuesto@#,###,###}';
document.form1.id.value='${fld:smn_servicios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

