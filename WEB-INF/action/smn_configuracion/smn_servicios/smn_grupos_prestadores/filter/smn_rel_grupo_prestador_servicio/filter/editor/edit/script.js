$('#smn_prestadores_servicios_id').val('${fld:smn_prestadores_servicios_id}').change();

setComboValue('smn_prestadores_servicios_id','${fld:smn_prestadores_servicios_id}','form1');
setComboValue('smn_grupos_prestadores_id','${fld:smn_grupos_prestadores_id}','form1');
document.form1.id.value='${fld:smn_rel_grupo_prestador_servicio_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

