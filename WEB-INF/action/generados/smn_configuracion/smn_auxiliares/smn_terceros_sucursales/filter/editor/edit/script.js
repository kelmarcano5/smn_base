document.form1.smn_terceros_id_name.value='${fld:ter_descripcion_corta_pl0@js}';
document.form1.smn_terceros_id.value='${fld:smn_terceros_id@#,###,###}';
document.form1.trs_codigo.value='${fld:trs_codigo@js}';
document.form1.trs_nombre.value='${fld:trs_nombre@js}';
document.form1.trs_responsable.value='${fld:trs_responsable@js}';
document.form1.trs_direccion.value='${fld:trs_direccion@#,###,###}';
document.form1.trs_telefono_fijo.value='${fld:trs_telefono_fijo@js}';
document.form1.trs_telefono_movil.value='${fld:trs_telefono_movil@js}';
document.form1.trs_email.value='${fld:trs_email@js}';
document.form1.id.value='${fld:smn_terceros_sucursales_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

