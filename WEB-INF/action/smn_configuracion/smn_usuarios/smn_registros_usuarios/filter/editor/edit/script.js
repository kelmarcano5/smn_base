$('#user_system').hide();

setComboValue('smn_naturaleza_auxiliar_rf','${fld:smn_naturaleza_auxiliar_rf}','form1');
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
document.form1.userlogin.value='${fld:userlogin@js}';
setComboValue('aux_tipo_persona','${fld:aux_tipo_persona}','form1');
setComboValue('smn_tipo_registro_rf','${fld:smn_tipo_registro_rf}','form1');
document.form1.aux_apellidos.value='${fld:aux_apellidos@js}';
document.form1.aux_nombres.value='${fld:aux_nombres@js}';
setComboValue('aux_tipo_doc_oficial_rf','${fld:aux_tipo_doc_oficial_rf}','form1');
document.form1.aux_num_doc_oficial.value='${fld:aux_num_doc_oficial@js}'
document.form1.passwd.value='${fld:passwd@js}'
document.form1.confirm.value='${fld:confirm@js}';
document.form1.email.value='${fld:email@js}';

if(document.form1.auc_descripcion.value == ""){
	document.form1.auc_descripcion.value='${fld:auc_descripcion@js}';
	//document.form1.auc_descripcion.value="";
}else{
	document.form1.auc_descripcion.value='${fld:auc_descripcion@js}';
}

document.form1.smn_user_rf.value='${fld:smn_user_rf@#######}';
document.form1.id.value='${fld:smn_auxiliar_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.getElementById('permisos').style.display='none';
document.getElementById('chktd').style.display='none'

// <rows>
// 	var id = "${fld:service_id}";
// 	var item = "${fld:item}";

// 	var fila ='<input name="service_id" id="service_id" type="checkbox" value="'+id+'" style="width:10px" checked>'+item+'<br>';
				
//     elemento.innerHTML += fila;
	
// </rows>




 

