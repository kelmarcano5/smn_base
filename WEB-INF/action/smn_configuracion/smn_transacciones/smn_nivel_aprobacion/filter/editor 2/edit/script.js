setComboValue('smn_configuracion_estructura_id','${fld:smn_configuracion_estructura_id}','form1');
document.form1.nap_codigo.value='${fld:nap_codigo@js}';
document.form1.nap_descripcion.value='${fld:nap_descripcion@js}';
setComboValue('nap_rol','${fld:nap_rol}','form1');
document.form1.nap_secuencia_aprobacion.value='${fld:nap_secuencia_aprobacion@#,###,###}';
document.form1.id.value='${fld:smn_nivel_aprobacion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.nap_codigo.disabled=true;

