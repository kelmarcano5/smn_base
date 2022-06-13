document.form1.crp_codigo.value='${fld:crp_codigo@js}';
document.form1.crp_nombre.value='${fld:crp_nombre@js}';
document.form1.crp_unidad_negocio.value='${fld:crp_unidad_negocio@#,###,###}';
document.form1.crp_moneda.value='${fld:crp_moneda@#,###,###}';
document.form1.crp_direccion.value='${fld:crp_direccion@#,###,###}';
document.form1.id.value='${fld:smn_corporaciones_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

