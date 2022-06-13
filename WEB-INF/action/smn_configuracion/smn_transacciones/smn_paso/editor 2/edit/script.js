document.form1.pas_codigo.value='${fld:pas_codigo@js}';
document.form1.pas_descripcion.value='${fld:pas_descripcion@js}';
document.form1.pas_cod_paso_anterior.value='${fld:pas_cod_paso_anterior@js}';
document.form1.pas_cod_paso_siguiente.value='${fld:pas_cod_paso_siguiente@js}';
setComboValue('pas_estatus_doc','${fld:pas_estatus_doc}','form1');
document.form1.id.value='${fld:smn_paso_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.pas_codigo.disabled=true;
 

