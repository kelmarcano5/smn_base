search();

if (!${fld:refid})
{
	alertBox('${lbl:b_record_deleted}', '${lbl:b_continue_button}', null, null);
}
else
{
	alertBox('${lbl:b_cnnot_eliminate_records}', '${lbl:b_continue_button}', null, null);
}
