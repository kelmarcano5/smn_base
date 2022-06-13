document.form1.rgu_tipo_doc_oficial.value='${fld:rgu_tipo_doc_oficial@#,###,###}';
document.form1.rgu_num_doc_oficial.value='${fld:rgu_num_doc_oficial@js}';
document.form1.rgu_nro_id_fiscal.value='${fld:rgu_nro_id_fiscal@js}';
document.form1.rgu_nombres.value='${fld:rgu_nombres@js}';
document.form1.rgu_apellidos.value='${fld:rgu_apellidos@js}';
document.form1.rgu_tipo_registro.value='${fld:rgu_tipo_registro@#,###,###}';
document.form1.rgu_email.value='${fld:rgu_email@js}';
document.form1.id.value='${fld:smn_registros_usuarios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

