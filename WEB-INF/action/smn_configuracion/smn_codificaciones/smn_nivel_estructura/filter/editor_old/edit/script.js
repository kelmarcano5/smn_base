$('#smn_estructura_codigo_id').val('${fld:smn_estructura_codigo_id}').trigger('change');
$('#nes_tipo').val('${fld:nes_tipo}').trigger('change');
$('#nes_predecesor').val('${fld:nes_predecesor}').trigger('change');

setComboValue('nes_predecesor','${fld:nes_predecesor}','form1');
$('#nes_niveles').val('${fld:nes_niveles@#######}');
document.form1.nes_codigo.value='${fld:nes_codigo@js}';
$('#nes_codigo').prop('disabled',true);
document.form1.nes_nombre.value='${fld:nes_nombre@js}';
$('#nes_nombre').prop('disabled',true);
document.form1.id.value='${fld:smn_nivel_estructura_id@#######}';

document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

/*var prede = '${fld:nes_ predecesor}';
if (prede=="") {
	$('#nes_predecesor').val('${fld:nes_predecesor}').trigger('change');
	document.form1.nes_predecesor.disabled=false;
	document.form1.nes_codigo.disabled=true;
} else {
	document.form1.nes_predecesor.disabled=false;
	document.form1.nes_codigo.disabled=true;
}*/