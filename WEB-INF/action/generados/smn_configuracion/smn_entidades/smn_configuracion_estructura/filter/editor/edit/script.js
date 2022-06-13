document.form1.coe_codigo.value='${fld:coe_codigo@js}';
document.form1.coe_nombre.value='${fld:coe_nombre@js}';
document.form1.coe_niveles.value='${fld:coe_niveles@#,###,###}';
document.form1.coe_mascara.value='${fld:coe_mascara@js}';
document.form1.coe_separador.value='${fld:coe_separador@js}';
document.form1.id.value='${fld:smn_configuracion_estructura_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

