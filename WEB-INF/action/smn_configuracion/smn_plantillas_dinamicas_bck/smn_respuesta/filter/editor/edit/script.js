document.form1.smn_cuestionario_id_name.value='${fld:cue_codigo_pl0@js}';
document.form1.smn_cuestionario_id.value='${fld:smn_cuestionario_id@#,###,###}';
document.form1.smn_seccion_id_name.value='${fld:sec_codigo_pl1@js}';
document.form1.smn_seccion_id.value='${fld:smn_seccion_id@#,###,###}';
document.form1.smn_pregunta_id_name.value='${fld:prg_codigo_pl2@js}';
document.form1.smn_pregunta_id.value='${fld:smn_pregunta_id@#,###,###}';
document.form1.smn_tipo_variable_id_name.value='${fld:tva_codigo_pl3@js}';
document.form1.smn_tipo_variable_id.value='${fld:smn_tipo_variable_id@#,###,###}';
setComboValue('smn_tipo_respuesta_id','${fld:smn_tipo_respuesta_id}','form1');
document.form1.smn_variable_id.value='${fld:smn_variable_id}';
document.form1.res_texto_respuesta.value='${fld:res_texto_respuesta@js}';
document.form1.id.value='${fld:smn_respuesta_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

