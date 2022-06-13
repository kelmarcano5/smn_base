document.form1.con_sistema.value='${fld:con_sistema@js}';
document.form1.con_descripcion.value='${fld:con_descripcion@js}';
setComboValue('smn_entidad_rf','${fld:smn_entidad_rf}','form1');
setComboValue('smn_sucursal_rf','${fld:smn_sucursal_rf}','form1');
document.form1.con_ip_servidor.value='${fld:con_ip_servidor@js}';
document.form1.con_hostname_instancia.value='${fld:con_hostname_instancia@js}';
document.form1.con_nombre_bd.value='${fld:con_nombre_bd@js}';
document.form1.con_usuario_bd.value='${fld:con_usuario_bd@js}';
document.form1.con_clave_bd.value='${fld:con_clave_bd@js}';
document.form1.con_puerto_bd.value='${fld:con_puerto_bd@js}';
setComboValue('con_estatus','${fld:con_estatus}','form1');
document.form1.con_vigencia.value='${fld:con_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_conexiones_bd_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

