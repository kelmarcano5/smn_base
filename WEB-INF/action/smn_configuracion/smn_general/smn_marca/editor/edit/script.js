document.form1.mar_codigo.value='${fld:mar_codigo@js}';
document.form1.mar_descripcion.value='${fld:mar_descripcion@js}';
document.form1.id.value='${fld:smn_marca_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.mar_codigo.disabled=true;
 

