listboxClear("suc_nombre");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.suc_nombre.add(optionChoose, 0);

<ase_sucursal_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.suc_nombre.add(option, 0);
</ase_sucursal_rows>
