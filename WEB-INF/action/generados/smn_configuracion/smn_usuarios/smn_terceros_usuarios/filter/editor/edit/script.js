document.form1.smn_terceros_id_name.value='${fld:ter_descripcion_corta_pl0@js}';
document.form1.smn_terceros_id.value='${fld:smn_terceros_id@#,###,###}';
document.form1.tru_usuario_id.value='${fld:tru_usuario_id@#,###,###}';
document.form1.tru_comunidad.value='${fld:tru_comunidad@#,###,###}';
document.form1.tru_nombres.value='${fld:tru_nombres@js}';
document.form1.tru_apellidos.value='${fld:tru_apellidos@js}';
document.form1.tru_nacionalidad.value='${fld:tru_nacionalidad@#,###,###}';
document.form1.tru_nro_doc_identidad.value='${fld:tru_nro_doc_identidad@js}';
document.form1.tru_nro_id_fiscal.value='${fld:tru_nro_id_fiscal@js}';
document.form1.tru_direccion.value='${fld:tru_direccion@#,###,###}';
document.form1.tru_email.value='${fld:tru_email@js}';
document.form1.tru_telefono_fijo.value='${fld:tru_telefono_fijo@js}';
document.form1.tru_telefono_movil.value='${fld:tru_telefono_movil@js}';
document.form1.id.value='${fld:smn_terceros_usuarios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

