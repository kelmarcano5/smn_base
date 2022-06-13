document.form1.smn_servicios_id_name.value='${fld:svc_codigo_pl0@js}';
document.form1.smn_servicios_id.value='${fld:smn_servicios_id@#,###,###}';
setComboValue('smn_areas_servicios_rf','${fld:smn_areas_servicios_rf}','form1');
setComboValue('smn_unidades_servicios_rf','${fld:smn_unidades_servicios_rf}','form1');
setComboValue('smn_centro_costo_rf','${fld:smn_centro_costo_rf}','form1');
document.form1.id.value='${fld:smn_rel_servicio_area_unidad_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

