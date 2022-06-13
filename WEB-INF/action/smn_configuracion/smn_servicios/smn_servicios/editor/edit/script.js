var tp = '${fld:smn_tipo_servicio_rf}';
if(tp=='' || tp==0){
		$('#smn_tipo_servicio_rf').val(0).change();
}else{
	$('#smn_tipo_servicio_rf').val(tp).change();
}

var un = '${fld:smn_unidad_medida_rf}';
if(un=='' || un==0){
		$('#smn_unidad_medida_rf').val(0).change();
}else{
	$('#smn_unidad_medida_rf').val(un).change();
}

var mo = '${fld:smn_moneda_rf}';
if(mo=='' || mo==0){
		$('#smn_moneda_rf').val(0).change();
}else{
	$('#smn_moneda_rf').val(mo).change();
}

var ds = '${fld:smn_descuento_rf}';
if(ds=='' || ds==0){
		$('#smn_descuento_rf').val(0).change();
}else{
	$('#smn_descuento_rf').val(ds).change();
}

var cl = '${fld:smn_clase_auxiliar_rf}';
if(cl=='' || cl==0){
	setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
		$('#smn_clase_auxiliar_rf').val(0).change();
}else{
	$('#smn_clase_auxiliar_rf').val(cl).change();
}

var dg = '${fld:smn_documento_general_rf}';
if(dg=='' || dg==0){
		$('#smn_documento_general_rf').val(0).change();
}else{
	$('#smn_documento_general_rf').val(dg).change();
}

var gp = '${fld:smn_grupo_titulo_impresion_rf}';
if(gp=='' || gp==0){
		$('#smn_grupo_titulo_impresion_rf').val(0).change();
}else{
	$('#smn_grupo_titulo_impresion_rf').val(gp).change();
}

var bm = '${fld:smn_baremos_id}';
if(bm=='' || bm==0){
		$('#smn_baremos_id').val(0).change();
}else{
$('#smn_baremos_id').val(bm).change();
}

var req = '${fld:svc_req_prestador}';
if(req=='' || req==0){
		$('#svc_req_prestador').val(0).change();
}else{
	$('#svc_req_prestador').val(req).change();
}


document.form1.svc_codigo.value='${fld:svc_codigo@js}';
document.form1.svc_descripcion.value='${fld:svc_descripcion@js}';
setComboValue('smn_tipo_servicio_rf','${fld:smn_tipo_servicio_rf}','form1');
document.form1.svc_frecuencia.value='${fld:svc_frecuencia@#,######}';
setComboValue('smn_unidad_medida_rf','${fld:smn_unidad_medida_rf}','form1');
document.form1.smn_precio_moneda_local.value='${fld:smn_precio_moneda_local@#,#####0.00}';
setComboValue('smn_moneda_rf','${fld:smn_moneda_rf}','form1');
document.form1.smn_precio_moneda_alterna.value='${fld:smn_precio_moneda_alterna@#,#####0.00}';
setComboValue('smn_descuento_rf','${fld:smn_descuento_rf}','form1');
document.form1.svc_monto_desc_ml.value='${fld:svc_monto_desc_ml@#,#####0.00}';
document.form1.svc_monto_desc_ma.value='${fld:svc_monto_desc_ma@#,#####0.00}';
document.form1.svr_precio_neto.value='${fld:svr_precio_neto@#,###,##0.00}';
document.form1.svc_precio_neto_ma.value='${fld:svc_precio_neto_ma@#,#####0.00}';
setComboValue('svc_req_prestador','${fld:svc_req_prestador}','form1');
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
document.form1.svc_requisitos.value='${fld:svc_requisitos@js}';
document.form1.svc_vigencia_desde.value='${fld:svc_vigencia_desde@dd-MM-yyyy}';
document.form1.svc_vigencia_hasta.value='${fld:svc_vigencia_hasta@dd-MM-yyyy}';
setComboValue('smn_documento_general_rf','${fld:smn_documento_general_rf}','form1');
setComboValue('smn_baremos_id','${fld:smn_baremos_id}','form1');
setComboValue('svc_inactivo','${fld:svc_inactivo}','form1');
document.form1.id.value='${fld:smn_servicios_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

setComboValue('smn_grupo_titulo_impresion_rf','${fld:smn_grupo_titulo_impresion_rf}','form1');
document.form1.svc_codigo.disabled=true;

if ('${fld:smn_moneda_rf}' != "") {
	$('#precioml').hide();
	$('#precionetoml').hide();
	$('#precioma').show();
	$('#moneda').show();
	$('#precionetoma').show();
}else{
	$('#precioml').show();
	$('#precionetoml').show();
	$('#precioma').hide();
	$('#moneda').hide();
	$('#precionetoma').hide();
}

 

