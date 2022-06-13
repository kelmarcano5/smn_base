document.form1.ent_codigo.value='${fld:ent_codigo@js}';
document.form1.ent_comunidad.value='${fld:ent_comunidad@#,###,###}';
document.form1.ent_corporacion.value='${fld:ent_corporacion@#,###,###}';
document.form1.ent_unidad_negocio.value='${fld:ent_unidad_negocio@#,###,###}';
setComboValue('ent_maneja_sucursal','${fld:ent_maneja_sucursal}','form1');
document.form1.ent_moneda.value='${fld:ent_moneda@#,###,###}';
document.form1.ent_sector_economico.value='${fld:ent_sector_economico@#,###,###}';
document.form1.ent_descripcion_corta.value='${fld:ent_descripcion_corta@js}';
document.form1.ent_descripcion_larga.value='${fld:ent_descripcion_larga@js}';
document.form1.ent_nro_id_fiscal.value='${fld:ent_nro_id_fiscal@js}';
document.form1.ent_direccion.value='${fld:ent_direccion@#,###,###}';
document.form1.ent_contacto.value='${fld:ent_contacto@js}';
document.form1.ent_telefono_fijo.value='${fld:ent_telefono_fijo@js}';
document.form1.ent_telefono_movil.value='${fld:ent_telefono_movil@js}';
document.form1.ent_email.value='${fld:ent_email@js}';
document.form1.ent_act_economica.value='${fld:ent_act_economica@js}';
document.form1.id.value='${fld:smn_entidades_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.ent_codigo.disabled=true;
 

