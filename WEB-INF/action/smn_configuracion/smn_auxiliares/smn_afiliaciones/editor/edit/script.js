document.form1.afc_codigo.value='${fld:afc_codigo@js}';
document.form1.afc_descripcion.value='${fld:afc_descripcion@js}';
document.form1.afc_afiliado.value='${fld:afc_afiliado@#,###,###}';
document.form1.afc_modulo.value='${fld:afc_modulo@#,###,###}';
setComboValue('afc_es_titular','${fld:afc_es_titular}','form1');
document.form1.afc_parentezco.value='${fld:afc_parentezco@#,###,###}';
document.form1.id.value='${fld:smn_afiliaciones_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.afc_codigo.disabled=true;
 

