var area = '${fld:smn_areas_servicios_id}';
if (area =="" || area == 0) {

}else{
	$('#smn_areas_servicios_id').val(area).change();
}

var eslab = '${fld:uns_es_laboratorio}';
if (eslab =="" || eslab == 0) {

}else{
	$('#uns_es_laboratorio').val(eslab).change();
}

var tipo = '${fld:smn_tipo_unidad_administrativa}';
if (tipo =="" || tipo == 0) {

}else{
	$('#smn_tipo_unidad_administrativa').val(tipo).change();
}

document.form1.smn_areas_servicios_id.value='${fld:smn_areas_servicios_id@#,###,###}';
document.form1.uns_codigo.value='${fld:uns_codigo@js}';
document.form1.uns_descripcion.value='${fld:uns_descripcion@js}';
document.form1.id.value='${fld:smn_unidades_servicios_id@#######}';
setComboValue('smn_tipo_unidad_administrativa','${fld:smn_tipo_unidad_administrativa}','form1');
setComboValue('uns_es_laboratorio','${fld:uns_es_laboratorio}','form1');
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.uns_codigo.disabled=true;
 

