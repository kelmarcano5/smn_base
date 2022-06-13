listboxClear("ctr_unidad_servicio_rf");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.ctr_unidad_servicio_rf.add(optionChoose, 0);

<ctr_unidad_servicio_rf_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.ctr_unidad_servicio_rf.add(option, 0);
</ctr_unidad_servicio_rf_rows>
