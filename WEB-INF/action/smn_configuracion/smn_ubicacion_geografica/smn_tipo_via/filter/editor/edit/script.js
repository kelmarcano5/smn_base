document.form1.tiv_codigo.value='${fld:tiv_codigo@js}';
document.form1.tiv_descripcion.value='${fld:tiv_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_via_id@#######}';

document.form1.tiv_codigo.disabled=true;
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

