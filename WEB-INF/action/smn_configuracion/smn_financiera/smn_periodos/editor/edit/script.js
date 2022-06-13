document.form1.prd_codigo.value='${fld:prd_codigo@js}';
document.form1.prd_descripcion.value='${fld:prd_descripcion@js}';
setComboValue('prd_ano','${fld:prd_ano}','form1');
document.form1.id.value='${fld:smn_periodos_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
detailView('detailsmn_periodos_detalle','2');


document.form1.prd_codigo.disabled=true;
 


