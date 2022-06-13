listboxClear("pat_panel");

var optionChoose = document.createElement("option");
optionChoose.text = '[${lbl:b_choose}]';
optionChoose.value = "0";
document.form1.pat_panel.add(optionChoose, 0);

<pat_panel_rows>
	var option = document.createElement("option");
	option.text = "${fld:item@js}"; 
	option.value = "${fld:id}";
	document.form1.pat_panel.add(option, 0);
</pat_panel_rows>
