listboxClear("smn_atributo_tres");

var optionChoose = document.createElement("option");
 optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.smn_atributo_tres.add(optionChoose, 0);

<smn_atributo_tres_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.smn_atributo_tres.add(option, 0);
</smn_atributo_tres_rows>


