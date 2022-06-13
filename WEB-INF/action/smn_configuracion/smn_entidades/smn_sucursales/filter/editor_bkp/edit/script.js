document.form1.suc_empresa.value='${fld:suc_empresa@#,###,###}';
document.form1.suc_codigo.value='${fld:suc_codigo@js}';
document.form1.suc_nombre.value='${fld:suc_nombre@js}';
document.form1.suc_unidad_negocio.value='${fld:suc_unidad_negocio@#,###,###}';
setComboValue('suc_maneja_area_servicio','${fld:suc_maneja_area_servicio}','form1');
document.form1.suc_responsable.value='${fld:suc_responsable@js}';
document.form1.suc_direccion.value='${fld:suc_direccion@#,###,###}';
document.form1.suc_telefono_fijo.value='${fld:suc_telefono_fijo@js}';
document.form1.suc_telefono_movil.value='${fld:suc_telefono_movil@js}';
document.form1.suc_email.value='${fld:suc_email@js}';
document.form1.id.value='${fld:smn_sucursales_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.suc_codigo.disabled=true;
 

