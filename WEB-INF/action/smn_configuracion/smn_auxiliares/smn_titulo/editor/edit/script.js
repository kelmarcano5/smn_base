document.form1.tlo_codigo.value='${fld:tlo_codigo@js}';
document.form1.tlo_descripcion.value='${fld:tlo_descripcion@js}';
document.form1.id.value='${fld:smn_titulo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tlo_codigo.disabled=true;
 

