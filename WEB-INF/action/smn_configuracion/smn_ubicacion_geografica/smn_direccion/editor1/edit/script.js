document.form1.dir_codigo.value='${fld:dir_codigo@js}';
document.form1.dir_descripcion.value='${fld:dir_descripcion@js}';
document.form1.dir_pais.value='${fld:dir_pais@#######}';
document.form1.dir_entidad_federal.value='${fld:dir_entidad_federal@#######}';
document.form1.dir_ciudad.value='${fld:dir_ciudad@#######}';
document.form1.dir_municipio.value='${fld:dir_municipio@#######}';
document.form1.dir_parroquia.value='${fld:dir_parroquia@#######}';
document.form1.dir_zona_postal.value='${fld:dir_zona_postal@#######}';
document.form1.dir_tipo_via.value='${fld:dir_tipo_via@#######}';
document.form1.dir_tipo_via_nom.value='${fld:dir_tipo_via_nom@js}';
document.form1.dir_tipo_via_num.value='${fld:dir_tipo_via_num@js}';
document.form1.dir_edificacion.value='${fld:dir_edificacion@#######}';
document.form1.dir_edificacion_nom.value='${fld:dir_edificacion_nom@js}';
document.form1.dir_edificacion_num.value='${fld:dir_edificacion_num@js}';
document.form1.dir_tipo_localidad.value='${fld:dir_tipo_localidad@###,###}';
document.form1.dir_tipo_localidad_nom.value='${fld:dir_tipo_localidad_nom@js}';
document.form1.dir_apartado_postal.value='${fld:dir_apartado_postal@js}';
document.form1.id.value='${fld:smn_direccion_id@#######}';
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


var aux = '${fld:smn_zona_rf}';
if (aux != "") {
	$('#smn_zona_rf').val(aux).trigger('change');
}

document.form1.dir_codigo.disabled=true;


 

