document.form1.smn_cuestionario_id_name.value='${fld:cue_codigo_pl0@js}';
document.form1.smn_cuestionario_id.value='${fld:smn_cuestionario_id@#,###,###}';
document.form1.sec_codigo.value='${fld:sec_codigo@js}';
document.form1.sec_descripcion.value='${fld:sec_descripcion@js}';
document.form1.id.value='${fld:smn_seccion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.sec_codigo.disabled=true;
 

