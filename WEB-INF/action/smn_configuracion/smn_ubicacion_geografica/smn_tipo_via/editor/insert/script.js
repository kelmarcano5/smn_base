
if ('${fld:reference}' == 'true')
{
	//force close dialog
	//alert('Reference: ${fld:reference}');
	parent.closeDialog();
	//alert('Reference: ${fld:id}');
	parent.setID('${fld:id}');
}
else
{
	addNew();
	alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'parent.search(); parent.setFocusOnForm("form1");');
}

