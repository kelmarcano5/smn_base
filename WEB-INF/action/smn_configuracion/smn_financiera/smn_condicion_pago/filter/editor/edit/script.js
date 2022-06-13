document.form1.cop_codigo.value='${fld:cop_codigo@js}';
document.form1.cop_descripcion.value='${fld:cop_descripcion@js}';
document.form1.id.value='${fld:smn_condicion_pago_id@#######}';
document.form1.cop_cantidad_dias.value='${fld:cop_cantidad_dias@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.cop_codigo.disabled=true;
 

