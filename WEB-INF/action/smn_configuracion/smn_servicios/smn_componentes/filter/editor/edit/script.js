setComboValue('cmp_genera_grupo_prestador','${fld:cmp_genera_grupo_prestador}','form1');

var f = '${fld:cmp_forma_calculo}';

$('#cmp_forma_calculo').val(f.replace(/\s/g, ''));

// if ('#cmp_forma_calculo' == 'D') {
	
// 	$('#pre_loc').hide();
// 	$('#mont_loc').hide();
// 	$('#pre_alt').hide();
// 	$('#mont_alt').hide();
// }

var forma = '${fld:cmp_forma_calculo}';
var f1 = forma.replace(/\s/g, '');

//alert(f1);
if (f1 == null || f1 == "" ) {

}else{
	$('#cmp_forma_calculo').val(f1).change();
}

 if (f1 == 'D') {
	$('#moneda').hide();
	$('#porcen').hide();
	$('#pre_loc').hide();
	$('#mont_loc').hide();
	$('#pre_alt').hide();
	$('#mont_alt').hide();
}

if (f1 == 'PO') {
	$('#cantidad').hide();
	$('#cmp_cantidad').val(1);
	$('#porcen').show();
	$('#moneda').hide();
	$('#pre_loc').hide();
	$('#mont_loc').hide();
	$('#pre_alt').hide();
	$('#mont_alt').hide();
}


if (f1 == 'M') {

alert(f1);
	$('#cantidad').hide();
	$('#cmp_cantidad').val(1);
	$('#porcen').hide();
	$('#moneda').show();
	$('#pre_loc').show();
	$('#mont_loc').show();
	$('#pre_alt').hide();
	$('#mont_alt').hide();
}


var visible = '${fld:cmp_visible}';
if (visible == null || visible == "" ) {

}else{
	$('#cmp_visible').val(visible).change();
}

var imprime = '${fld:smn_imprime}';
if (imprime == null || imprime == "" ) {

}else{
	$('#smn_imprime').val(imprime).change();
}


var tipo = '${fld:cmp_tipo_componente}';
if (tipo == null || tipo == "" ) {

}else{
	$('#cmp_tipo_componente').val(tipo).change();
	$('#cmp_tipo_componente').prop("disabled", true);
}

$('#cmp_acumula_servicio').val(tipo).change();

document.form1.cmp_codigo.value='${fld:cmp_codigo@js}';
document.form1.cmp_descripcion.value='${fld:cmp_descripcion@js}';
setComboValue('cmp_tipo_componente','${fld:cmp_tipo_componente}','form1');
setComboValue('smn_grupo_componente_rf','${fld:smn_grupo_componente_rf}','form1');
setComboValue('cmp_forma_calculo','${fld:cmp_forma_calculo}','form1');
document.form1.cmp_vigencia_desde.value='${fld:cmp_vigencia_desde@dd-MM-yyyy}';
document.form1.cmp_vigencia_hasta.value='${fld:cmp_vigencia_hasta@dd-MM-yyyy}';
setComboValue('cmp_visible','${fld:cmp_visible}','form1');
setComboValue('cmp_clase_auxiliar_rf','${fld:cmp_clase_auxiliar_rf}','form1');
setComboValue('cmp_req_grupo_prestador','${fld:cmp_req_grupo_prestador}','form1');
setComboValue('smn_grupo_prestador_id','${fld:smn_grupo_prestador_id}','form1');
document.form1.cmp_tiempo_estimado.value='${fld:cmp_tiempo_estimado@#,###,###}';
setComboValue('smn_unidad_medida_rf','${fld:smn_unidad_medida_rf}','form1');
setComboValue('smn_almacen_rf','${fld:smn_almacen_rf}','form1');
setComboValue('smn_item_rf','${fld:smn_item_rf}','form1');
setComboValue('smn_servicios_rf','${fld:smn_servicios_rf}','form1');
setComboValue('smn_tipo_gasto_rf','${fld:smn_tipo_gasto_rf}','form1');
setComboValue('smn_sub_tipo_gasto_rf','${fld:smn_sub_tipo_gasto_rf}','form1');
setComboValue('smn_imprime','${fld:smn_imprime}','form1');
setComboValue('smn_grupo_titulo_impresion_rf','${fld:smn_grupo_titulo_impresion_rf}','form1');
document.form1.cmp_porcentaje.value='${fld:cmp_porcentaje@#,###,##0.00}';
document.form1.cmp_cantidad.value='${fld:cmp_cantidad@######0.00}';
document.form1.cmp_precio_moneda_local.value='${fld:cmp_precio_moneda_local@#,###,##0.00}';
document.form1.cmp_monto_moneda_local.value='${fld:cmp_monto_moneda_local@#,###,##0.00}';
setComboValue('smn_moneda_rf','${fld:smn_moneda_rf}','form1');
document.form1.cmp_precio_moneda_alterna.value='${fld:cmp_precio_moneda_alterna@#,###,##0.00}';
document.form1.cmp_monto_moneda_alterna.value='${fld:cmp_monto_moneda_alterna@#,###,##0.00}';
document.form1.id.value='${fld:smn_componentes_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
document.form1.cmp_codigo.disabled=true;

var genera_prestador = '${fld:cmp_genera_grupo_prestador}';
if (genera_prestador == null || genera_prestador == "" ) {

}else{
	$('#cmp_genera_grupo_prestador').val(genera_prestador).change();
}

if ('${fld:cmp_tipo_componente}'=='IT') {
	$('#cboitem').show();
	var itm = '${fld:smn_item_rf}';
	//document.getElementById('smn_item_rf').value=itm;
	$('#smn_item_rf').val(itm).change();;
}

if ('${fld:cmp_tipo_componente}'=='SE') {
	$('#cboservicio').show();

	var ser = '${fld:smn_servicios_rf}';
	$('#smn_servicios_rf').val(ser).change();;
}

if ('${fld:smn_almacen_rf}' != '') {
	$('#cboalmacen').show();
	var alm = '${fld:smn_almacen_rf}';
	$('#smn_almacen_rf').val(alm).change();;
}

if ('${fld:smn_unidad_medida_rf}' != '') {
	$('#cbounidad').show();
	var und = '${fld:smn_unidad_medida_rf}';
	$('#smn_unidad_medida_rf').val(und).change();;
}

if ('${fld:smn_grupo_componente_rf}' != '') {
	$('#cbogrupo').show();
	var grpc = '${fld:smn_grupo_componente_rf}';
	$('#smn_grupo_componente_rf').val(grpc).change();;
}

if ('${fld:cmp_clase_auxiliar_rf}' != '') {
	$('#cboclase').show();
	var grpc = '${fld:cmp_clase_auxiliar_rf}';
	$('#cmp_clase_auxiliar_rf').val(grpc).change();;
}

if ('${fld:cmp_grupo_prestador}' != '') {
	$('#cbogrupoprest').show();
	var grpp = '${fld:cmp_grupo_prestador}';
	$('#smn_grupo_prestador_id').val(grpp).change();;
}

var tpg = '${fld:smn_tipo_gasto_rf}';
if (tpg == '' || tpg == 0)  {

}else{
	$('#smn_tipo_gasto_rf').val(tpg).change();;
}

//$("#cmp_monto_moneda_local").attr('disabled','disabled');
//$("#cmp_monto_moneda_alterna").attr('disabled','disabled');

var sbt = '${fld:smn_sub_tipo_gasto_rf}';
if (sbt == '' || sbt == 0)  {

}else{
	$('#smn_sub_tipo_gasto_rf').val(sbt).change();;
}

var gpt = '${fld:smn_grupo_titulo_impresion_rf}';
if (gpt == '' || gpt == 0)  {

}else{
	$('#smn_grupo_titulo_impresion_rf').val(gpt).change();;
}

if ('${fld:smn_moneda_rf}' != '') {
		$('#pre_loc').show();
		$('#mont_loc').show();
		$('#pre_alt').show();
		$('#mont_alt').show();
	var mon = '${fld:smn_moneda_rf}';
	$('#smn_moneda_rf').val(mon).change();	
}

if (f1 == 'D') {
	$('#moneda').hide();
	$('#porcen').hide();
	$('#pre_loc').hide();
	$('#mont_loc').hide();
	$('#pre_alt').hide();
	$('#mont_alt').hide();
}

 if('${fld:cmp_req_grupo_prestador}'=='S'){
 	$('#cbogrupoprest').show();
 }else{
 	$('#cbogrupoprest').hide();
 }

 <rows>selectSmnServiciosId('${fld:smn_servicios_id}','${fld:svc_codigo}');</rows> 


 

