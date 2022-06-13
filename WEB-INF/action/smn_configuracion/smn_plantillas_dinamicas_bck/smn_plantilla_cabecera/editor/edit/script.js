document.form1.pca_codigo.value='${fld:pca_codigo@js}';
document.form1.pca_descripcion.value='${fld:pca_descripcion@js}';
setComboValue('smn_modulo_rf','${fld:smn_modulo_rf}','form1');
setComboValue('pca_status','${fld:pca_status}','form1');
document.form1.id.value='${fld:smn_plantilla_cabecera_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.pca_codigo.disabled=true;
 

