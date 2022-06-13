var id = '${fld:id}';
//var descripcion = '${fld:descripcion}';

if (id == "") {
	$('#precioml').show();
	$('#precionetoml').show();
	$('#precioma').hide();
	$('#moneda').hide();
	$('#precionetoma').hide();
	$('#smn_precio_moneda_alterna').val(0);
	$('#svc_precio_neto_ma').val(0);
	$('#svc_monto_desc_ma').val(0);

}else{
	$('#precioml').hide();
	$('#precionetoml').hide();
	$('#precioma').show();
	$('#moneda').show();
	$('#precionetoma').show();
	$('#smn_precio_moneda_local').val(0);
	$('#svr_precio_neto').val(0);
	$('#svc_monto_desc_ml').val(0);
}





