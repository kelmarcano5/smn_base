addNew();
var id2 = '${fld:id}';
var baremos = '${fld:smn_baremos_id}';
alert("ID SERVICIO: "+id2+" BAREMOS: "+baremos);
relacion(id2);

function relacion(id2) {
	var uri = "${def:context}${def:actionroot}/editor_relacion/form?id2="+id2+"&baremos="+baremos;		
	//alert(uri);			
	openDialog("editor10", uri, 700, 500);	
}

//alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'search(); setFocusOnForm("form1");');
