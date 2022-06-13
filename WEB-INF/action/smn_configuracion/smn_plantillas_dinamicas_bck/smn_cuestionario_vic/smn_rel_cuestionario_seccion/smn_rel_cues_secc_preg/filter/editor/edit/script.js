document.form1.smn_rel_cuestionario_seccion_id.value='${fld:smn_rel_cuestionario_seccion_id@#,###,###}';
document.form1.smn_pregunta_id_name.value='${fld:prg_codigo_pl0@js}';
document.form1.smn_pregunta_id.value='${fld:smn_pregunta_id@#,###,###}';
document.form1.csp_secuencia.value='${fld:csp_secuencia@#,###,###}';
document.form1.id.value='${fld:smn_rel_cues_secc_preg_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

