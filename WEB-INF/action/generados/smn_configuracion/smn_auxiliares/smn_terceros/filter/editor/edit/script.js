document.form1.ter_auxiliar_categoria.value='${fld:ter_auxiliar_categoria@#,###,###}';
document.form1.ter_descripcion_corta.value='${fld:ter_descripcion_corta@js}';
document.form1.ter_descripcion_larga.value='${fld:ter_descripcion_larga@js}';
document.form1.id.value='${fld:smn_terceros_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

