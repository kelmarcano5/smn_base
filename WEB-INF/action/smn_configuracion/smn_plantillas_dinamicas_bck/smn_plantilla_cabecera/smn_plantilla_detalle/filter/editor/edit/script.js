document.form1.smn_plantilla_cabecera_id.value='${fld:smn_plantilla_cabecera_id@#,###,###}';
setComboValue('smn_seccion_rf','${fld:smn_seccion_rf}','form1');
document.form1.pde_sec_seccion.value='${fld:pde_sec_seccion@#,###,###}';
setComboValue('smn_pregunta_rf','${fld:smn_pregunta_rf}','form1');
document.form1.pde_sec_pregunta.value='${fld:pde_sec_pregunta@#,###,###}';
setComboValue('pde_status','${fld:pde_status}','form1');
document.form1.id.value='${fld:smn_plantilla_detalle_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

