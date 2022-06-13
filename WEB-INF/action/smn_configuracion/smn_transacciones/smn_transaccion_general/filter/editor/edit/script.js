document.form1.trg_codigo.value='${fld:trg_codigo@js}';
document.form1.trg_descripcion.value='${fld:trg_descripcion@js}';
document.form1.trg_modulo_origen.value='${fld:trg_modulo_origen}';
document.form1.id.value='${fld:smn_transaccion_general_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
<rows>setCheckboxValue('smn_modulos_id','${fld:smn_modulos_id}','form1');</rows>


document.form1.trg_codigo.disabled=true;
 

