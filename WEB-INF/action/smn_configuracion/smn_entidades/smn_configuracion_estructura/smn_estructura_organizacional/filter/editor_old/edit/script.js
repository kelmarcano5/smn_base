setComboValue('smn_configuracion_estructura_id','${fld:smn_configuracion_estructura_id}','form1');
document.form1.eor_codigo.value='${fld:eor_codigo@js}';
document.form1.eor_nombre.value='${fld:eor_nombre@js}';
setComboValue('eor_centro_costo','${fld:eor_centro_costo}','form1');
setComboValue('eor_clase_auxiliar','${fld:eor_clase_auxiliar}','form1');
setComboValue('eor_auxiliar','${fld:eor_auxiliar}','form1');
document.form1.id.value='${fld:smn_estructura_organizacional_id@#######}';
setComboValue('eor_clase_auxiliar_aprobador','${fld:eor_clase_auxiliar_aprobador}','form1');
setComboValue('eor_aprobador','${fld:eor_aprobador}','form1');
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.form1.smn_configuracion_estructura_id.disabled=true;
document.form1.eor_codigo.disabled=true;
 

