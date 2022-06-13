document.form1.smn_auxiliar_tipos_servicios_id_name.value='${fld:tts_codigo_pl0@js}';
document.form1.smn_auxiliar_tipos_servicios_id.value='${fld:smn_auxiliar_tipos_servicios_id@#,###,###}';
document.form1.tse_codigo.value='${fld:tse_codigo@js}';
document.form1.tse_descripcion.value='${fld:tse_descripcion@js}';
document.form1.tse_auxiliar.value='${fld:tse_auxiliar@#,###,###}';
document.form1.tse_auxiliar_sucursal.value='${fld:tse_auxiliar_sucursal@#,###,###}';
document.form1.tse_auxiliar_unidad_negocio.value='${fld:tse_auxiliar_unidad_negocio@#,###,###}';
document.form1.id.value='${fld:smn_auxiliar_areas_servicios_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tse_codigo.disabled=true;
 

