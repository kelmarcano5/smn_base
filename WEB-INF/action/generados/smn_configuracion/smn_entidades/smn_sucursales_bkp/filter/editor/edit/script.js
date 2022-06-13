document.form1.smn_entidades_id_name.value='${fld:ent_codigo_pl0@js}';
document.form1.smn_entidades_id.value='${fld:smn_entidades_id@#,###,###}';
document.form1.suc_codigo.value='${fld:suc_codigo@js}';
document.form1.suc_nombre.value='${fld:suc_nombre@js}';
document.form1.suc_responsable.value='${fld:suc_responsable@js}';
document.form1.suc_direccion.value='${fld:suc_direccion@#,###,###}';
document.form1.suc_telefono_fijo.value='${fld:suc_telefono_fijo@js}';
document.form1.suc_telefono_movil.value='${fld:suc_telefono_movil@js}';
document.form1.suc_email.value='${fld:suc_email@js}';
document.form1.id.value='${fld:smn_sucursales_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

