document.form1.alm_codigo.value='${fld:alm_codigo@js}';
document.form1.alm_nombre.value='${fld:alm_nombre@js}';
document.form1.alm_empresa.value='${fld:alm_empresa@#,###,###}';
document.form1.alm_unidad_negocio.value='${fld:alm_unidad_negocio@#,###,###}';
document.form1.alm_sucursal.value='${fld:alm_sucursal@#,###,###}';
document.form1.alm_area_servicio.value='${fld:alm_area_servicio@#,###,###}';
document.form1.alm_unidad_servicio.value='${fld:alm_unidad_servicio@#,###,###}';
document.form1.id.value='${fld:smn_almacen_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.alm_codigo.disabled=true;
 

