document.form1.afc_codigo.value='${fld:afc_codigo@js}';
document.form1.afc_descripcion.value='${fld:afc_descripcion@js}';
document.form1.acf_auxiliar_persona_natural.value='${fld:acf_auxiliar_persona_natural@#,###,###}';
document.form1.afc_modulo.value='${fld:afc_modulo@#,###,###}';
setComboValue('afc_es_titular','${fld:afc_es_titular}','form1');
document.form1.afc_titular.value='${fld:afc_titular@#,###,###}';
document.form1.afc_parentezco.value='${fld:afc_parentezco@#,###,###}';
document.form1.id.value='${fld:smn_afiliaciones_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

