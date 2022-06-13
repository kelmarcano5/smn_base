listboxClear("smn_valor_cuatro");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.smn_valor_cuatro.add(optionChoose, 0);

<smn_valor_cuatro_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.smn_valor_cuatro.add(option, 0);
</smn_valor_cuatro_rows>


