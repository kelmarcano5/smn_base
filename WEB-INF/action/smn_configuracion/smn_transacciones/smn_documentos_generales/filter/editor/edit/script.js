document.form1.dcg_codigo.value='${fld:dcg_codigo@js}';
document.form1.dcg_descripcion.value='${fld:dcg_descripcion@js}';
document.form1.dcg_modulo_origen.value='${fld:dcg_modulo_origen@#,###,###}';
document.form1.id.value='${fld:smn_documentos_generales_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.dcg_codigo.disabled=true;
 

