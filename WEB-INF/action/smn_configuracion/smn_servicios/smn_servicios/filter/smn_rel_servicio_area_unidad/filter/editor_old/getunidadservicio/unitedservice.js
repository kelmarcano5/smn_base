listboxClear("prs_unidad_servicio");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.prs_unidad_servicio.add(optionChoose, 0);

<prs_unidad_servicio_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.prs_unidad_servicio.add(option, 0);
</prs_unidad_servicio_rows>
