document.form1.acn_telefono_fijo.value='${fld:acn_telefono_fijo@js}';
document.form1.acn_telefono_movil.value='${fld:acn_telefono_movil@js}';
document.form1.acn_email.value='${fld:acn_email@js}';
document.form1.acn_facebook.value='${fld:acn_facebook@js}';
document.form1.acn_linkedin.value='${fld:acn_linkedin@js}';
document.form1.acn_twitter.value='${fld:acn_twitter@js}';
document.form1.acn_swift.value='${fld:acn_swift@js}';
document.form1.id.value='${fld:smn_auxiliar_contacto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

