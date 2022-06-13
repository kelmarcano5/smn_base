listboxClear("dir_parroquia");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.dir_parroquia.add(optionChoose, 0);

<dir_parroquia_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.dir_parroquia.add(option, 0);
</dir_parroquia_rows>
