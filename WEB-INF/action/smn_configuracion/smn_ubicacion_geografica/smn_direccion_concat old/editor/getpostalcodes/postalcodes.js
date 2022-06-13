listboxClear("dir_zona_postal");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.dir_zona_postal.add(optionChoose, 0);

<dir_zona_postal_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.dir_zona_postal.add(option, 0);
</dir_zona_postal_rows>
