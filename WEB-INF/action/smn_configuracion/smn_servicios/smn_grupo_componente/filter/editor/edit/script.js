document.form1.gco_codigo.value='${fld:gco_codigo@js}';
document.form1.gco_descripcion.value='${fld:gco_descripcion@js}';
document.form1.id.value='${fld:smn_grupo_componente_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.gco_codigo.disabled=true;
 

