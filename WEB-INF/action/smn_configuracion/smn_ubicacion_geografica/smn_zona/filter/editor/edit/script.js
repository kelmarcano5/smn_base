document.form1.zon_codigo.value='${fld:zon_codigo@js}';
document.form1.zon_descripcion.value='${fld:zon_descripcion@js}';
setComboValue('zon_estatus','${fld:zon_estatus}','form1');
document.form1.id.value='${fld:smn_zona_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.zon_codigo.disabled=true;
 

