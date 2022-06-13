setComboValue('smn_tipos_areas_id','${fld:smn_tipos_areas_id}','form1');
document.form1.ase_codigo.value='${fld:ase_codigo@js}';
document.form1.ase_descripcion.value='${fld:ase_descripcion@js}';
setComboValue('ase_empresa','${fld:ase_empresa}','form1');
setComboValue('ase_sucursal','${fld:ase_sucursal}','form1');
setComboValue('ase_unidad_negocio','${fld:ase_unidad_negocio}','form1');
document.form1.id.value='${fld:smn_areas_servicios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.ase_codigo.disabled=true;
 

