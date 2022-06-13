setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
document.form1.apc_apellidos.value='${fld:apc_apellidos@js}';
document.form1.apc_nombres.value='${fld:apc_nombres@js}';
document.form1.apc_telefono_contacto.value='${fld:apc_telefono_contacto@js}';
document.form1.apc_email.value='${fld:apc_email@js}';
document.form1.apc_direccion.value='${fld:apc_direccion@js}';
document.form1.id.value='${fld:smn_auxiliar_persona_contacto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.getElementById('smn_clase_auxiliar_rf').disabled=true;
document.getElementById('smn_auxiliar_rf').disabled=true;

 

