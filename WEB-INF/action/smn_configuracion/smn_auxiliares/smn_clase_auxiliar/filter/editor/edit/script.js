document.form1.cla_codigo.value='${fld:cla_codigo@js}';
document.form1.cla_nombre.value='${fld:cla_nombre@js}';
document.form1.cla_modulo.value='${fld:cla_modulo@#,###,###}';
document.form1.cla_naturaleza.value='${fld:cla_naturaleza@#,###,###}';
document.form1.id.value='${fld:smn_clase_auxiliar_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.cla_codigo.disabled=true;
 

