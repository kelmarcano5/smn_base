listboxClear("set_servicio_id");
<set_servicio_id_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.set_servicio_id.add(option, 0);
	//alert('ID: ' + option.value + ' - Item: ' + option.text);
</set_servicio_id_rows>
