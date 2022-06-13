listboxClear("dir_ciudad");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.dir_ciudad.add(optionChoose, 0);

<dir_ciudad_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.dir_ciudad.add(option, 0);
</dir_ciudad_rows>
