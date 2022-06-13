var ser = '${fld:smn_servicios_id}';
$('#smn_servicios_id').val(ser).change();

var area = '${fld:smn_areas_servicios_rf}';
$('#smn_areas_servicios_rf').val(area).change();

var un = '${fld:smn_unidades_servicios_rf}';
$('#smn_unidades_servicios_rf').val(un).change();

var cen = '${fld:smn_centro_costo_rf}';
$('#smn_centro_costo_rf').val(cen).change();

document.form1.smn_servicios_id.value='${fld:smn_servicios_id@#,###,###}';
setComboValue('smn_areas_servicios_rf','${fld:smn_areas_servicios_rf}','form1');
setComboValue('smn_unidades_servicios_rf','${fld:smn_unidades_servicios_rf}','form1');
setComboValue('smn_centro_costo_rf','${fld:smn_centro_costo_rf}','form1');
document.form1.id.value='${fld:smn_rel_servicio_area_unidad_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

