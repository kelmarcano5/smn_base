document.form1.smn_entidades_id_name.value='${fld:ent_codigo_pl0@js}';
document.form1.smn_entidades_id.value='${fld:smn_entidades_id@#,###,###}';
document.form1.usr_usuario_id.value='${fld:usr_usuario_id@#,###,###}';
document.form1.usr_nombres.value='${fld:usr_nombres@js}';
document.form1.usr_apellidos.value='${fld:usr_apellidos@js}';
document.form1.usr_nacionalidad.value='${fld:usr_nacionalidad@#,###,###}';
document.form1.usr_nro_doc_identidad.value='${fld:usr_nro_doc_identidad@js}';
document.form1.usr_nro_id_fiscal.value='${fld:usr_nro_id_fiscal@js}';
document.form1.usr_direccion.value='${fld:usr_direccion@#,###,###}';
document.form1.usr_email.value='${fld:usr_email@js}';
document.form1.usr_telefono_fijo.value='${fld:usr_telefono_fijo@js}';
document.form1.usr_telefono_movil.value='${fld:usr_telefono_movil@js}';
document.form1.id.value='${fld:smn_usuarios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

