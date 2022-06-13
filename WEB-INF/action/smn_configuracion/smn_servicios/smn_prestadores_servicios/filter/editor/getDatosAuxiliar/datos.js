var clase = $('#clase').val('${fld:clase}');
console.log(clase);
//$('prs_codigo').val(clase);

var cedula = $('#cedula').val('${fld:cedula}');
console.log(cedula);
$('#prs_codigo').val('${fld:clase}'+" - "+'${fld:cedula}');
document.getElementById('prs_codigo').disabled=true;

var nombres = $('#nombres').val('${fld:nombres}');
//console.log(nombres);
$('#prs_descripcion').val('${fld:nombres}');
document.getElementById('prs_descripcion').disabled=true;