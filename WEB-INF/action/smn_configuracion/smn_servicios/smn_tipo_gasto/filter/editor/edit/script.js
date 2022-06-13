document.form1.tig_codigo.value='${fld:tig_codigo@js}';
document.form1.tig_descripcion.value='${fld:tig_descripcion@js}';
document.form1.id.value='${fld:smn_tipo_gasto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tig_codigo.disabled=true;
 

