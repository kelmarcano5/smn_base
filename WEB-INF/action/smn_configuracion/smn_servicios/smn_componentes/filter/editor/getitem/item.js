//document.getElementById('cmp_codigo').value ="";
//document.getElementById('cmp_descripcion').value ="";

var codigo = '${fld:codigo}';
var descripcion = '${fld:descripcion}';
//alert("codigo: "+codigo+ " descripcion: "+descripcion);

document.getElementById('cmp_codigo').value = codigo;
document.getElementById('cmp_codigo').disabled = true;
document.getElementById('cmp_descripcion').value = descripcion;
document.getElementById('cmp_descripcion').disabled = true;


