var elemento = window.document.getElementById('rols_mod2');
document.getElementById('chkser').style.display='none';
elemento.innerHTML="";

<service_rows2>

	var id = "${fld:service_id2}";
	var item = "${fld:item}";

	var fila ='<input name="service_id2" id="service_id2" type="checkbox" value="'+id+'" style="width:10px">'+item+'<br>';
				
    elemento.innerHTML += fila;
	
</service_rows2>