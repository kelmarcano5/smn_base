document.form1.fra_codigo.value='${fld:fra_codigo@js}';
document.form1.fra_descripcion.value='${fld:fra_descripcion@js}';
document.form1.id.value='${fld:smn_franquicias_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.fra_codigo.disabled=true;
 

