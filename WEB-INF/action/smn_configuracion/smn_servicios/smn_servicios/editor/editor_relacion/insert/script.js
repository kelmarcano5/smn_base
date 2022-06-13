addNew();
var servicio = '${fld:servicio}';
// var baremos = '${fld:baremos}';

baremos(servicio);

function baremos(servicio, baremos) {
	var uri = "${def:context}${def:actionroot}/../editor_baremos/form?servicio="+servicio;		
	//alert(uri);			
	openDialog("editor12", uri, 700, 500);	
}

//document.getElementById("salir").disabled=false;
//alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'search(); setFocusOnForm("form1");');

