listboxClear("smn_atributo_cinco");

var optionChoose = document.createElement("option");
 optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.smn_atributo_cinco.add(optionChoose, 0);

<smn_atributo_cinco_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.smn_atributo_cinco.add(option, 0);
</smn_atributo_cinco_rows>


