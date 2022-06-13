document.form1.bar_codigo.value='${fld:bar_codigo@js}';
document.form1.bar_descripcion.value='${fld:bar_descripcion@js}';
document.form1.bar_entidad.value='${fld:bar_entidad}';
document.form1.bar_vigencia_desde.value='${fld:bar_vigencia_desde@dd-MM-yyyy}';
document.form1.bar_vigencia_hasta.value='${fld:bar_vigencia_hasta@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_baremos_id}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
<rows>selectSmnServiciosId('${fld:smn_servicios_id}','${fld:svc_codigo}');</rows>

