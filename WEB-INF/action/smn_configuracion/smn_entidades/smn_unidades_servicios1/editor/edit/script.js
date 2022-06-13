document.form1.smn_areas_servicios_id_name.value='${fld:ase_codigo_pl0@js}';
document.form1.smn_areas_servicios_id.value='${fld:smn_areas_servicios_id@#,###,###}';
document.form1.uns_codigo.value='${fld:uns_codigo@js}';
document.form1.uns_descripcion.value='${fld:uns_descripcion@js}';
document.form1.id.value='${fld:smn_unidades_servicios_id@#######}';
setComboValue('smn_tipo_unidad_administrativa','${fld:smn_tipo_unidad_administrativa}','form1');
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.uns_codigo.disabled=true;
 

