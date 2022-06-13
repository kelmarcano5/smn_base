document.form1.smn_areas_servicios_id_name.value='${fld:ase_codigo_pl0@js}';
document.form1.smn_areas_servicios_id.value='${fld:smn_areas_servicios_id@#,###,###}';
document.form1.uns_codigo.value='${fld:uns_codigo@js}';
document.form1.uns_descripcion.value='${fld:uns_descripcion@js}';
document.form1.uns_centro_costo.value='${fld:uns_centro_costo@#,###,###}';
document.form1.id.value='${fld:smn_unidades_servicios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

