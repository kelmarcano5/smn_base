document.form1.tve_codigo.value='${fld:tve_codigo@js}';
document.form1.tve_descripcion.value='${fld:tve_descripcion@js}';
setComboValue('tve_estatus','${fld:tve_estatus}','form1');
document.form1.tve_vigencia.value='${fld:tve_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_vencimiento_cabecera_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tve_codigo.disabled=true;
 

