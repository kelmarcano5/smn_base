listboxClear("dir_municipio");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.dir_municipio.add(optionChoose, 0);

<dir_municipio_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.dir_municipio.add(option, 0);
</dir_municipio_rows>
