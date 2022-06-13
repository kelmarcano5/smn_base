listboxClear("mnt_menu_id");
<mnt_menu_id_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.mnt_menu_id.add(option, 0);
	//alert('ID: ' + option.value + ' - Item: ' + option.text);
</mnt_menu_id_rows>
