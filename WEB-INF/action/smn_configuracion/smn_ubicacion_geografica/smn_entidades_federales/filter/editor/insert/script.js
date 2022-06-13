
if ('${fld:reference}' == 'true')
{
	alert('Referenced')
	//force close dialog
	parent.closeDialog();
	parent.setID('${fld:id}');
}
else
{
	alert('No referenced')
	addNew();
	alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'parent.search(); parent.setFocusOnForm("form1");');
}

