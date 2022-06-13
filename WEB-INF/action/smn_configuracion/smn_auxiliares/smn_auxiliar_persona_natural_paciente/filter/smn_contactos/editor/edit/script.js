var aux = '${fld:smn_auxiliar_id}';
if (aux == '' || aux == 0)  {

}else{
	$('#smn_auxiliar_id').val(aux).change();
}

var clase = '${fld:smn_clase_auxiliar_rf}';
if (clase == '' || clase == 0)  {

}else{
	$('#smn_clase_auxiliar_rf').val(clase).change();
}

var tipo1 = '${fld:smn_tipo_contactos_rf}';
if (tipo1 == '' || tipo1 == 0)  {

}else{
	$('#smn_tipo_contactos_rf').val(tipo1).change();
}

var tipo2 = '${fld:smn_tipo_contactos_rf1}';
if (tipo2 == '' || tipo2 == 0)  {

}else{
	$('#smn_tipo_contactos_rf1').val(tipo2).change();
}

document.form1.cnt_nombres.value='${fld:cnt_nombres@js}';
document.form1.cnt_apellidos.value='${fld:cnt_apellidos@js}';
document.form1.cnt_email.value='${fld:cnt_email@js}';
setComboValue('smn_auxiliar_id','${fld:smn_auxiliar_id}','form1');
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_tipo_contactos_rf','${fld:smn_tipo_contactos_rf}','form1');
document.form1.cnt_descripcion.value='${fld:cnt_descripcion@js}';
setComboValue('smn_tipo_contactos_rf1','${fld:smn_tipo_contactos_rf1}','form1');
document.form1.cnt_descripcion1.value='${fld:cnt_descripcion1@js}';
document.form1.cnt_telefono_contacto.value='${fld:cnt_telefono_contacto@js}';
document.form1.id.value='${fld:smn_contactos_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

