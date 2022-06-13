document.form1.ptz_codigo.value='${fld:ptz_codigo@js}';
document.form1.ptz_descripcion.value='${fld:ptz_descripcion@js}';
document.form1.id.value='${fld:smn_parentezco_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.ptz_codigo.disabled=true;
 

