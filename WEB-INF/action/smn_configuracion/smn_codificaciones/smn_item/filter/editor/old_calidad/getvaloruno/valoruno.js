listboxClear("smn_valor_uno");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.smn_valor_uno.add(optionChoose, 0);


<smn_valor_uno_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.smn_valor_uno.add(option, 0);
</smn_valor_uno_rows>


