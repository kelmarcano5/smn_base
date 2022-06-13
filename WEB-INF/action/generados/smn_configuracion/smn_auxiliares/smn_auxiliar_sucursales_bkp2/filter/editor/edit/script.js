document.form1.trs_codigo.value='${fld:trs_codigo@js}';
document.form1.trs_nombre.value='${fld:trs_nombre@js}';
document.form1.trs_auxiliar_unidad_negocio.value='${fld:trs_auxiliar_unidad_negocio@#,###,###}';
document.form1.trs_responsable.value='${fld:trs_responsable@js}';
document.form1.trs_direccion.value='${fld:trs_direccion@#,###,###}';
document.form1.trs_telefono_fijo.value='${fld:trs_telefono_fijo@js}';
document.form1.trs_telefono_movil.value='${fld:trs_telefono_movil@js}';
document.form1.trs_email.value='${fld:trs_email@js}';
document.form1.id.value='${fld:smn_auxiliar_sucursales_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

