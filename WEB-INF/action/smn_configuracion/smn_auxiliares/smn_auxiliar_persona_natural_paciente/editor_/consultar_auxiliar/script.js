//$('#flag').val('');
alert('${fld:aux_id}');

var i = '${fld:aux_id}';

//$('#flag').val(0);
if (i == '') {
	$('#flag').val(0);
}else{
	$('#flag').val(1);
}
var id = '${fld:smn_auxiliar_id}';
var fg = '${fld:flags}';
console.log("FLAG FG EN CONSULTAR AUXILIAR: "+fg);
//$('#aux_nombres').val('');

console.log('RETORNO DATOS id='+id);
console.log($('#flag').val());
validodatos($('#flag').val());
