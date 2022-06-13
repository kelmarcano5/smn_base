listboxClear("set_menu_id");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.set_menu_id.add(optionChoose, 0);

<set_menu_id_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.set_menu_id.add(option, 0);
	//alert('ID: ' + option.value + ' - Item: ' + option.text);
</set_menu_id_rows>
