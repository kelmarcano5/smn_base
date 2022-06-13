document.form1.smn_tipo_variable_id_name.value='${fld:tva_codigo_pl0@js}';
document.form1.smn_tipo_variable_id.value='${fld:smn_tipo_variable_id@#,###,###}';
document.form1.prg_codigo.value='${fld:prg_codigo@js}';
document.form1.prg_descripcion.value='${fld:prg_descripcion@js}';
setComboValue('prg_tipo_respuesta','${fld:prg_tipo_respuesta}','form1');
setComboValue('sec_estatus','${fld:sec_estatus}','form1');
document.form1.id.value='${fld:smn_pregunta_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.prg_codigo.disabled=true;
 

