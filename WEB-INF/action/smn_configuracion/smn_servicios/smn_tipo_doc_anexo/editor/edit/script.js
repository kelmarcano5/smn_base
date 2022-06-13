document.form1.tda_codigo.value='${fld:tda_codigo@js}';
document.form1.tda_descripcion.value='${fld:tda_descripcion@js}';
setComboValue('tda_estatus','${fld:tda_estatus}','form1');
document.form1.tda_vigencia.value='${fld:tda_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_tipo_doc_anexo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tda_codigo.disabled=true;
 

