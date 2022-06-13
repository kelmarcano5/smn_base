document.form1.smn_terceros_id_name.value='${fld:ter_descripcion_corta_pl0@js}';
document.form1.smn_terceros_id.value='${fld:smn_terceros_id@#,###,###}';
document.form1.trc_codigo.value='${fld:trc_codigo@js}';
document.form1.trc_descripcion_corta.value='${fld:trc_descripcion_corta@js}';
document.form1.trc_descripcion_larga.value='${fld:trc_descripcion_larga@js}';
document.form1.trc_responsable.value='${fld:trc_responsable@js}';
setComboValue('trc_tipo_cco','${fld:trc_tipo_cco}','form1');
document.form1.trc_nivel.value='${fld:trc_nivel@#,###,###}';
document.form1.trc_clase_auxiliar.value='${fld:trc_clase_auxiliar@#,###,###}';
document.form1.trc_auxiliar.value='${fld:trc_auxiliar@#,###,###}';
document.form1.id.value='${fld:smn_terceros_centro_costo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

