document.form1.smn_cuestionario_id_name.value='${fld:cue_codigo_pl0@js}';
document.form1.smn_cuestionario_id.value='${fld:smn_cuestionario_id@#,###,###}';
document.form1.smn_seccion_id_name.value='${fld:sec_codigo_pl1@js}';
document.form1.smn_seccion_id.value='${fld:smn_seccion_id@#,###,###}';
document.form1.rcs_secuencia.value='${fld:rcs_secuencia@#,###,###}';
document.form1.id.value='${fld:smn_rel_cuestionario_seccion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

