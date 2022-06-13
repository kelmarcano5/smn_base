document.form1.tcb_codigo.value='${fld:tcb_codigo@js}';
document.form1.tcb_descripcion.value='${fld:tcb_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_cuenta_banco_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tcb_codigo.disabled=true;
 

