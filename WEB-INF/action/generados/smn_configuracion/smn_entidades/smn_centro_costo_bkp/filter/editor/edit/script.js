document.form1.smn_entidades_id_name.value='${fld:ent_codigo_pl0@js}';
document.form1.smn_entidades_id.value='${fld:smn_entidades_id@#,###,###}';
document.form1.cco_codigo.value='${fld:cco_codigo@js}';
document.form1.cco_descripcion_corta.value='${fld:cco_descripcion_corta@js}';
document.form1.cco_descripcion_larga.value='${fld:cco_descripcion_larga@js}';
document.form1.cco_responsable.value='${fld:cco_responsable@js}';
setComboValue('cco_tipo_cco','${fld:cco_tipo_cco}','form1');
document.form1.cco_nivel.value='${fld:cco_nivel@#,###,###}';
document.form1.cco_clase_auxiliar.value='${fld:cco_clase_auxiliar@#,###,###}';
document.form1.cco_auxiliar.value='${fld:cco_auxiliar@#,###,###}';
document.form1.id.value='${fld:smn_centro_costo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

