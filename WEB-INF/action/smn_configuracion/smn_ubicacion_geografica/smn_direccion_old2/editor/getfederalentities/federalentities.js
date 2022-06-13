listboxClear("dir_entidad_federal");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.dir_entidad_federal.add(optionChoose, 0);

<dir_entidad_federal_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.dir_entidad_federal.add(option, 0);
</dir_entidad_federal_rows>
