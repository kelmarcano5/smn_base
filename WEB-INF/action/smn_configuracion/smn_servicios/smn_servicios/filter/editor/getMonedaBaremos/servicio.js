var id = '${fld:id}';
//var descripcion = '${fld:descripcion}';

if (id == "") {
	$('#precioml').show();
	$('#precionetoml').show();
	$('#precioma').hide();
	$('#moneda').hide();
	$('#precionetoma').hide();
}else{
	$('#precioml').hide();
	$('#precionetoml').hide();
	$('#precioma').show();
	$('#moneda').show();
	$('#precionetoma').show();
}



