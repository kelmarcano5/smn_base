$('#smn_zona_id').val('${fld:smn_zona_id}').trigger('change');
$('#smn_pais_rf').val('${fld:smn_pais_rf}').trigger('change');
$('#smn_entidad_federal_rf').val('${fld:smn_entidad_federal_rf}').trigger('change');
$('#smn_ciudad_rf').val('${fld:smn_ciudad_rf}').trigger('change');
$('#smn_municipio_rf').val('${fld:smn_municipio_rf}').trigger('change');
$('#smn_parroquia_rf').val('${fld:smn_parroquia_rf}').trigger('change');
document.form1.rzc_latitud.value='${fld:rzc_latitud@#,###,######0.000000}';
document.form1.rzc_longitud.value='${fld:rzc_longitud@#,###,######0.000000}';
document.form1.rzc_coordenadas.value='${fld:rzc_coordenadas}';
document.form1.id.value='${fld:smn_rel_zona_coordenadas_id}';

document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.getElementById("rzc_longitud").disabled=true;
document.getElementById("rzc_latitud").disabled=true;

displayPolygon('${fld:rzc_coordenadas}');