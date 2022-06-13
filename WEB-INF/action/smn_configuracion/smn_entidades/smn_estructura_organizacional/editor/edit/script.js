setComboValue('smn_configuracion_estructura_id','${fld:smn_configuracion_estructura_id}','form1');
document.form1.eor_codigo.value='${fld:eor_codigo@js}';
document.form1.eor_nombre.value='${fld:eor_nombre@js}';
setComboValue('eor_centro_costo','${fld:eor_centro_costo}','form1');
setComboValue('eor_clase_auxiliar','${fld:eor_clase_auxiliar}','form1');
setComboValue('eor_auxiliar','${fld:eor_auxiliar}','form1');
document.form1.id.value='${fld:smn_estructura_organizacional_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.form1.eor_niveles.value='${fld:eor_niveles@#,###,###}';
document.form1.eor_mascara.value='${fld:eor_mascara@js}';

document.form1.eor_codigo.disabled=true;
 

