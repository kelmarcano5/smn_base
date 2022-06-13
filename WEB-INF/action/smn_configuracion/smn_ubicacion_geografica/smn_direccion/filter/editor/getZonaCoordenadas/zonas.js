$("#dir_tipo_via").attr('disabled',false);
$("#dir_tipo_via_nom").attr('disabled',false);
$("#dir_tipo_via_num").attr('disabled',false);
$("#dir_tipo_localidad").attr('disabled',false);
$("#dir_tipo_localidad_nom").attr('disabled',false);
$("#dir_apartado_postal").attr('disabled',false);

var pais = '${fld:pais}';
var entidad = '${fld:entidad}';
var ciudad = '${fld:ciudad}';
var municipio = '${fld:municipio}';
var parroquia = '${fld:parroquia}';

var longitud = '${fld:longitud}';
var latitud = '${fld:latitud}';

$('#dir_mapa_longitud').val(longitud);
$('#dir_mapa_latitud').val(latitud);

var pais_descrip = '${fld:pais_descrip}';
var entidad_descrip = '${fld:entidad_descrip}';
var ciudad_descrip = '${fld:ciudad_descrip}';
var municipio_descrip = '${fld:municipio_descrip}';
var parroquia_descrip = '${fld:parroquia_descrip}';

var descripcion = "Pais: "+pais_descrip+", Estado: "+entidad_descrip+", Ciudad: "+ciudad_descrip+", Municipio: "+municipio_descrip+", Parroquia: "+parroquia_descrip;

//console.log("PAIS: "+pais+" ENTIDAD FED: "+entidad+" CIUDAD: "+ciudad+" MUNICIPIO: "+municipio+" PARROQUIA: "+parroquia+"DESCRIPCION: "+descripcion);
$('#dir_descripcion').val(descripcion);
$('#dir_pais').val(pais);
$('#dir_entidad_federal').val(entidad);
$('#dir_ciudad').val(ciudad);
$('#dir_municipio').val(municipio);
$('#dir_parroquia').val(parroquia);

