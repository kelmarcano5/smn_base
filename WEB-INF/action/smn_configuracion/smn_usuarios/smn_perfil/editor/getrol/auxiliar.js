var elemento = window.document.getElementById('rols_mod');
elemento.innerHTML="";

<service_rows>

	var id = "${fld:service_id}";
	var item = "${fld:item}";

	var fila ='<input name="service_id" id="service_id" type="checkbox" value="'+id+'" style="width:10px"  onchange="chgCombo2(this.value);">'+item+'<br>';
				
    elemento.innerHTML += fila;
	
</service_rows>