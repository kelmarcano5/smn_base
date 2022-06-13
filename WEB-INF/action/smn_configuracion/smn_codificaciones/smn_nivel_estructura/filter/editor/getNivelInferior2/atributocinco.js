listboxClear("nes_predecesor");

// var optionChoose = document.createElement("option");
//  optionChoose.text = '[${lbl:b_choose}]';
// optionChoose.value = "0";
// document.form1.nes_predecesor.add(optionChoose, 0);

<nes_predecesor_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.nes_predecesor.add(option, 0);
</nes_predecesor_rows>


