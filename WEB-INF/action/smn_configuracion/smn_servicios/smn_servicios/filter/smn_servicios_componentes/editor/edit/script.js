var se = '${fld:smn_servicios_id}';
if (se == '' || se == 0) {

}else{
	$('#smn_servicios_id').val(se).change();
}


var co = '${fld:smn_componentes_id}';
if (co == '' || co == 0) {

}else{
	$('#smn_componentes_id').val(co).change();
}

var en = '${fld:smn_entidades_rf}';
if (en == '' || en == 0) {

}else{
	$('#smn_entidades_rf').val(en).change();
}

var su = '${fld:smn_sucursales_rf}';
if (su == '' || su == 0) {

}else{
	$('#smn_sucursales_rf').val(su).change();
}

var ar = '${fld:smn_areas_servicios_rf}';
if (ar == '' || ar == 0) {

}else{
	$('#smn_areas_servicios_rf').val(ar).change();
}

var un = '${fld:smn_unidades_servicios_rf}';
if (un == '' || un == 0) {

}else{
	$('#smn_unidades_servicios_rf').val(un).change();
}

var cl = '${fld:smn_clase_auxiliar_rf}';
if (cl == '' || cl == 0) {

}else{
	$('#smn_clase_auxiliar_rf').val(cl).change();
}

document.form1.smn_servicios_id.value='${fld:smn_servicios_id@#,###,###}';
document.form1.smn_componentes_id.value='${fld:smn_componentes_id@#,###,###}';
document.form1.id.value='${fld:smn_servicios_componentes_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.form1.sec_cantidad.value=formatear_monto('${fld:sec_cantidad@#,###,##0.00}');
document.form1.sec_porcentaje.value=formatear_monto('${fld:sec_porcentaje@#,###,##0.00}');
document.form1.sec_gastos.value=formatear_monto('${fld:sec_gastos@#,###,##0.00}');


function formatear_monto(monto){
	var base = monto;
	base1 = base.replace('.','');
	base = base1.replace('.','');
	base1 = base.replace(',','.');
	
	return base1;
}

