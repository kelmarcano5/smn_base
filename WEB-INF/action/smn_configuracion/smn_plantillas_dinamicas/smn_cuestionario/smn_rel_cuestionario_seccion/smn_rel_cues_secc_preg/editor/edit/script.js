document.form1.smn_rel_cuestionario_seccion_id.value='${fld:smn_rel_cuestionario_seccion_id}';
setComboValue('smn_pregunta_id','${fld:smn_pregunta_id}','form1');
setComboValue('csp_tipo_pregunta','${fld:csp_tipo_pregunta}','form1');
document.form1.csp_secuencia.value='${fld:csp_secuencia@#,###,###}';
document.form1.csp_color_letra.value='${fld:csp_color_letra@js}';
document.form1.csp_tipo_letra.value='${fld:csp_tipo_letra@js}';
document.form1.csp_tamano_letra.value='${fld:csp_tamano_letra@#,###,###}';
document.form1.csp_color_sombreado.value='${fld:csp_color_sombreado@js}';
document.form1.csp_espacio_identacion.value='${fld:csp_espacio_identacion@#,###,###}';
setComboValue('csp_tipo_valor','${fld:csp_tipo_valor}','form1');
setComboValue('smn_tipo_variable_col_1_id','${fld:smn_tipo_variable_col_1_id}','form1');
setComboValue('smn_tipo_variable_col_2_id','${fld:smn_tipo_variable_col_2_id}','form1');
setComboValue('smn_tipo_variable_col_3_id','${fld:smn_tipo_variable_col_3_id}','form1');
setComboValue('smn_tipo_variable_col_4_id','${fld:smn_tipo_variable_col_4_id}','form1');
document.form1.id.value='${fld:smn_rel_cues_secc_preg_id@#,###,###}';
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


