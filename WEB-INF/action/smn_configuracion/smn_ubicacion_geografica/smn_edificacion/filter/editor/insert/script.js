
if ('${fld:reference}' == 'true')
{
	//force close dialog
	parent.closeDialog();
	parent.setID('${fld:id}');
}
else
{
	addNew();
	alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'parent.search(); parent.setFocusOnForm("form1");');
}
