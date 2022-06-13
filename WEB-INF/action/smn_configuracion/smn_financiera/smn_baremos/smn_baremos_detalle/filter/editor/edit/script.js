var item = '${fld:smn_item_rf}';
if (item == '' || item == 0) {

}else{
	$('#smn_item_rf').val(item).change();
}

var se = '${fld:smn_servicios_rf}';
if (se == '' || se == 0) {

}else{
	$('#smn_servicios_rf').val(se).change();
}

var fc = '${fld:bad_forma_calculo}';
if (fc == '' || fc == 0) {

}else{
	$('#bad_forma_calculo').val(fc).change();
}

var tp = '${fld:bad_tipo_componente}';
if (tp == '' || tp == 0) {

}else{
	$('#bad_tipo_componente').val(tp).change();
}

var cl = '${fld:smn_clase_auxiliar_rf}';
if (cl == '' || cl == 0) {

}else{
	$('#smn_clase_auxiliar_rf').val(cl).change();
}

var ba = '${fld:smn_baremos_id}';
if (ba == '' || ba == 0) {

}else{
	$('#smn_baremos_id').val(ba).change();
}

// var smn_item_rf = '${fld:smn_item_rf}';
// $('#smn_item_rf').val(smn_item_rf).trigger('change');


// var smn_servicios_rf = '${fld:smn_servicios_rf}';
// $('#smn_servicios_rf').val(smn_servicios_rf).change();

// var forma_calculo = '${fld:bad_forma_calculo}';
// $('#bad_forma_calculo').val(forma_calculo).change();

setComboValue('smn_baremos_id','${fld:smn_baremos_id}','form1');
setComboValue('smn_servicios_rf','${fld:smn_servicios_rf}','form1');
setComboValue('bad_tipo_componente','${fld:bad_tipo_componente}','form1');
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_item_rf','${fld:smn_item_rf}','form1');
setComboValue('smn_almacen_rf','${fld:smn_almacen_rf}','form1');
document.form1.bad_cantidad.value='${fld:bad_cantidad@#,###,##0.00}';
document.form1.bad_precio_moneda_local.value='${fld:bad_precio_moneda_local@#,###,##0.00}';
setComboValue('smn_moneda_rf','${fld:smn_moneda_rf}','form1');
document.form1.bad_precio_moneda_alterna.value='${fld:bad_precio_moneda_alterna@#,###,###0.00}';
setComboValue('smn_descuento_rf','${fld:smn_descuento_rf}','form1');
setComboValue('bad_estatus','${fld:bad_estatus}','form1');
//document.form1.bad_estatus.value='${fld:bad_estatus@js}';
document.form1.id.value='${fld:smn_baremos_detalle_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.getElementById("smn_moneda_rf").disabled=true;

if('${fld:bad_tipo_componente}' == 'IT'){
	//document.getElementById("item").style.display="";
	//document.getElementById("alm").style.display="";
	//document.getElementById("coin").style.display="";
	//document.getElementById("coin_alt").style.display="";
	//document.getElementById("serv").style.display="none";	
}

if('${fld:bad_tipo_componente}' == 'SE'){
	//document.getElementById("serv").style.display="";
	//document.getElementById("item").style.display="none";
	//document.getElementById("alm").style.display="none";
	//document.getElementById("coin").style.display="";
	//document.getElementById("coin_alt").style.display="";
}

if ('${fld:bad_tipo_componente}' == 'HO') {
	//document.getElementById("serv").style.display="none";
	//document.getElementById("item").style.display="none";

}


if('${fld:bad_tipo_componente}' == ''){
				//document.getElementById("act").style.display="none";
	//document.getElementById("serv").style.display="none";
	//document.getElementById("item").style.display="none";
	//document.getElementById("item").style.display="none";
	//document.getElementById("alm").style.display="none";
	//document.getElementById("coin").style.display="none";
	//document.getElementById("coin_alt").style.display="none";
}
 

