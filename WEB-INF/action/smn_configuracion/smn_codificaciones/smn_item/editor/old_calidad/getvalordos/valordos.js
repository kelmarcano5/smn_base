listboxClear("smn_valor_dos");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.smn_valor_dos.add(optionChoose, 0);

<smn_valor_dos_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.smn_valor_dos.add(option, 0);
</smn_valor_dos_rows>


