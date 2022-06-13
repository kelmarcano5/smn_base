var cl = '${fld:smn_clase_auxiliar_rf}';
if (cl == '' || cl == 0)  {

}else{
	$('#smn_clase_auxiliar_rf').val(cl).change();
}


var aux = '${fld:smn_auxiliar_rf}';
if (aux == '' || aux == 0)  {

}else{
	$('#smn_auxiliar_rf').val(aux).change();
}


var auxr = '${fld:smn_auxiliar_relacionado}';
if (auxr == '' || auxr == 0)  {

}else{
	$('#smn_auxiliar_relacionado').val(auxr).change();
}



document.form1.trs_codigo.value='${fld:trs_codigo@js}';
document.form1.trs_nombre.value='${fld:trs_nombre@js}';
document.form1.trs_responsable.value='${fld:trs_responsable@js}';
document.form1.trs_direccion.value='${fld:trs_direccion@#,###,###}';
document.form1.trs_telefono_fijo.value='${fld:trs_telefono_fijo@js}';
document.form1.trs_telefono_movil.value='${fld:trs_telefono_movil@js}';
document.form1.trs_email.value='${fld:trs_email@js}';
document.form1.id.value='${fld:smn_auxiliar_sucursales_id@#######}';
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_relacionado','${fld:smn_auxiliar_relacionado}','form1');

document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.trs_codigo.disabled=true;
 


document.form1.trs_codigo.disabled=true;
 

