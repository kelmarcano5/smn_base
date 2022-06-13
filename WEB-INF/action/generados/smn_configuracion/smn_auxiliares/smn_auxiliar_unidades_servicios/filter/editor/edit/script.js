document.form1.smn_auxiliar_areas_servicios_id_name.value='${fld:tse_codigo_pl0@js}';
document.form1.smn_auxiliar_areas_servicios_id.value='${fld:smn_auxiliar_areas_servicios_id@#,###,###}';
document.form1.tns_codigo.value='${fld:tns_codigo@js}';
document.form1.tns_descripcion.value='${fld:tns_descripcion@js}';
document.form1.id.value='${fld:smn_auxiliar_unidades_servicios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

