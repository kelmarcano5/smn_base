document.form1.smn_tipos_servicios_id_name.value='${fld:tsr_codigo_pl0@js}';
document.form1.smn_tipos_servicios_id.value='${fld:smn_tipos_servicios_id@#,###,###}';
document.form1.ase_codigo.value='${fld:ase_codigo@js}';
document.form1.ase_descripcion.value='${fld:ase_descripcion@js}';
document.form1.ase_empresa.value='${fld:ase_empresa@#,###,###}';
document.form1.ase_sucursal.value='${fld:ase_sucursal@#,###,###}';
document.form1.ase_unidad_negocio.value='${fld:ase_unidad_negocio@#,###,###}';
document.form1.id.value='${fld:smn_areas_servicios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

