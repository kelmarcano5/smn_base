document.form1.tcp_codigo.value='${fld:tcp_codigo@js}';
document.form1.tcp_nombre.value='${fld:tcp_nombre@js}';
document.form1.tcp_auxiliar_unidad_negocio.value='${fld:tcp_auxiliar_unidad_negocio@#,###,###}';
document.form1.tcp_moneda.value='${fld:tcp_moneda@#,###,###}';
document.form1.tcp_direccion.value='${fld:tcp_direccion@#,###,###}';
document.form1.id.value='${fld:smn_auxiliar_corporaciones_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

