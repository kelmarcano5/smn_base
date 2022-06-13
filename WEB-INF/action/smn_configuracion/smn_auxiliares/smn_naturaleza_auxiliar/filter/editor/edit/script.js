document.form1.naa_codigo.value='${fld:naa_codigo@js}';
document.form1.naa_nombre.value='${fld:naa_nombre@js}';
document.form1.id.value='${fld:smn_naturaleza_auxiliar_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.naa_codigo.disabled=true;
 

