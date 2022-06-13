listboxClear("ase_sucursal");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.ase_sucursal.add(optionChoose, 0);

<ase_sucursal_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.ase_sucursal.add(option, 0);
</ase_sucursal_rows>
