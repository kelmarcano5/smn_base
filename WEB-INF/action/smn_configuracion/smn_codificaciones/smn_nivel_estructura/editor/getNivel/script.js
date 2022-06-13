var nivel = '${fld:nivel}';
var mascara = '${fld:mascara}';
var codigo = '${fld:id_codigo}';
var seperardor = '${fld:separador}'

var ed = document.getElementById("editar").value;
console.log(ed);
if (ed != 1) {
	$('#nes_niveles').val(nivel);
	$('#mascara').val(mascara);

	document.getElementById("nes_niveles").disabled=true;

	if (nivel == 1) {
		console.log("No hay nivel inferior disponible");
	} 
}

// else {
// 	chgComboObtenerNivelInferior(codigo, nivel, mascara);
// }




