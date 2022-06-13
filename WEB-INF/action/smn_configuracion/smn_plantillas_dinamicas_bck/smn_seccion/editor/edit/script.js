document.form1.sec_codigo.value='${fld:sec_codigo@js}';
document.form1.sec_descripcion.value='${fld:sec_descripcion@js}';
setComboValue('sec_estatus','${fld:sec_estatus}','form1');
document.form1.id.value='${fld:smn_seccion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.sec_codigo.disabled=true;
 

