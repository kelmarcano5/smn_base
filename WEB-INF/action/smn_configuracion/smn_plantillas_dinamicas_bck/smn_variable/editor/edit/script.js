document.form1.smn_tipo_variable_id_name.value='${fld:tva_codigo_pl0@js}';
document.form1.smn_tipo_variable_id.value='${fld:smn_tipo_variable_id@#,###,###}';
document.form1.var_codigo.value='${fld:var_codigo@js}';
document.form1.var_descripcion.value='${fld:var_descripcion@js}';
document.form1.var_tipo_valor.value='${fld:var_tipo_valor@js}';
document.form1.var_color_letra.value='${fld:var_color_letra@js}';
document.form1.var_tipo_letra.value='${fld:var_tipo_letra@#,###,###}';
document.form1.var_tamano_letra.value='${fld:var_tamano_letra@#,###,###}';
document.form1.var_color_sombreado.value='${fld:var_color_sombreado@js}';
document.form1.id.value='${fld:smn_variable_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.var_codigo.disabled=true;
 

