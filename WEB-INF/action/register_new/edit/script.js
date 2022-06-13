document.form1.rgu_tipo_doc_oficial.value='${fld:rgu_tipo_doc_oficial@#,###,###}';
document.form1.rgu_num_doc_oficial.value='${fld:rgu_num_doc_oficial@js}';
document.form1.rgu_nro_id_fiscal.value='${fld:rgu_nro_id_fiscal@js}';
document.form1.rgu_nombres.value='${fld:rgu_nombres@js}';
document.form1.rgu_apellidos.value='${fld:rgu_apellidos@js}';
document.form1.rgu_tipo_registro.value='${fld:rgu_tipo_registro@#,###,###}';
document.form1.rgu_razon_social.value='${fld:rgu_razon_social@js}';
document.form1.rgu_responsable.value='${fld:rgu_responsable@js}';
document.form1.rgu_cargo.value='${fld:rgu_cargo@#,###,###}';
document.form1.rgu_num_minist_salud.value='${fld:rgu_num_minist_salud@js}';
document.form1.rgu_num_coleg_medicos.value='${fld:rgu_num_coleg_medicos@js}';
document.form1.rgu_email.value='${fld:rgu_email@js}';
document.form1.id.value='${fld:smn_registros_usuarios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

