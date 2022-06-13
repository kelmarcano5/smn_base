listboxClear("eor_aprobador");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.eor_aprobador.add(optionChoose, 0);

<eor_aprobador_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.eor_aprobador.add(option, 0);
</eor_aprobador_rows>
