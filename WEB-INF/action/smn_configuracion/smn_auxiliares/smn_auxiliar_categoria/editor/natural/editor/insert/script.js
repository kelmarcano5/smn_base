var objSelect1 = document.getElementById('aca_naturaleza_auxiliar');
var objSelect2 = document.getElementById('aca_tipo_persona');
var objSelect3 = document.getElementById('aca_empresa');
var objSelect4 = document.getElementById('aca_sucursal');
var objSelect5 = document.getElementById('aca_unidad_negocio');
var objSelect6 = document.getElementById('aca_area_servicio');
var objSelect7 = document.getElementById('aca_unidad_servicio');

addNew();
alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'parent.search(); setFocusOnForm("form1");');

setSelectedIndex(objSelect1, "${fld:aca_naturaleza_auxiliar}");
setSelectedIndex(objSelect2, "${fld:aca_tipo_persona}");
setSelectedIndex(objSelect3, "${fld:aca_empresa}");
setSelectedIndex(objSelect4, "${fld:aca_sucursal}");
setSelectedIndex(objSelect5, "${fld:aca_unidad_negocio}");
setSelectedIndex(objSelect6, "${fld:aca_area_servicio}");
setSelectedIndex(objSelect7, "${fld:aca_unidad_servicio}");

