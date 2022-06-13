var se = '${fld:smn_servicios_id}';
if (se == null || setFocusOnForm == "" ) {

}else{
	$('#smn_servicios_id').val(se).change();
}

var pr = '${fld:smn_prestadores_servicios_id}';
if (pr == null || pr == "" ) {

}else{
	$('#smn_prestadores_servicios_id').val(pr).change();
}

var gr = '${fld:smn_grupos_prestadores_id}';
if (gr == null || gr == "" ) {

}else{
	$('#smn_grupos_prestadores_id').val(gr).change();
}

document.form1.smn_grupos_prestadores_id.value='${fld:smn_grupos_prestadores_id@#,###,###}';
document.form1.smn_prestadores_servicios_id.value='${fld:smn_prestadores_servicios_id@#,###,###}';
document.form1.smn_servicios_id.value='${fld:smn_servicios_id@#,###,###}';
document.form1.gps_frecuencia.value='${fld:gps_frecuencia@#,###,##0.00}';
document.form1.id.value='${fld:smn_grupo_prestador_servicio_frecuencia_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

