setComboValue('smn_modulos_id','${fld:smn_modulos_id}','form1');
document.form1.eco_codigo.value='${fld:eco_codigo@js}';
document.form1.eco_nombre.value='${fld:eco_nombre@js}';
document.form1.eco_niveles.value='${fld:eco_niveles@#,###,###}';
document.form1.eco_mascara.value='${fld:eco_mascara@js}';
document.form1.eco_separador.value='${fld:eco_separador@js}';
document.form1.id.value='${fld:smn_estructura_codigo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.eco_codigo.disabled=true;
 

