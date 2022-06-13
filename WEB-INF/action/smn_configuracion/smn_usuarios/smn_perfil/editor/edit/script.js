//setComboValue('app_id','${fld:app_id}','form1');
document.form1.prf_codigo.value='${fld:prf_codigo@js}';
document.form1.prf_descripcion.value='${fld:prf_descripcion@js}';
//setComboValue('role_id','${fld:role_id}','form1');
setComboValue('prf_tipo_acceso','${fld:prf_tipo_acceso}','form1');
setComboValue('prf_add','${fld:prf_add}','form1');
setComboValue('prf_del','${fld:prf_del}','form1');
setComboValue('prf_edit','${fld:prf_edit}','form1');
setComboValue('prf_view','${fld:prf_view}','form1');
setComboValue('prf_export','${fld:prf_export}','form1');
setComboValue('prf_find','${fld:prf_find}','form1');
setComboValue('prf_import','${fld:prf_import}','form1');
document.form1.id.value='${fld:smn_perfil_id@#######}';

document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

var elemento = window.document.getElementById('rols_mod');
//elemento.innerHTML="";

<rows>
	var id = "${fld:service_id}";
	var item = "${fld:item}";

	var fila ='<input name="service_id" id="service_id" type="checkbox" value="'+id+'" style="width:10px" checked>'+item+'<br>';
				
    elemento.innerHTML += fila;

    //setCheckboxValue('role_id','${fld:role_id}','form1');
	
</rows>

<rows2>selectSmnUsuariosId('${fld:smn_usuarios_id}','${fld:name_user}');</rows2>



