document.form1.clf_codigo.value='${fld:clf_codigo@js}';
document.form1.clf_descripcion.value='${fld:clf_descripcion@js}';
document.form1.clf_ponderacion.value='${fld:clf_ponderacion@#,###,###}';
document.form1.id.value='${fld:smn_clasificacion_abc_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.clf_codigo.disabled=true;
 

