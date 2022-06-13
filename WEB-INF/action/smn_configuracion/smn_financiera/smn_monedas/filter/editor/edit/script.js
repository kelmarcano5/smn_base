document.form1.mon_codigo.value='${fld:mon_codigo@js}';
document.form1.mon_nombre.value='${fld:mon_nombre@js}';
document.form1.mon_simbolo.value='${fld:mon_simbolo@js}';
document.form1.id.value='${fld:smn_monedas_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.mon_codigo.disabled=true;
 

