document.form1.tco_codigo.value='${fld:tco_codigo@js}';
document.form1.tco_descripcion_corta.value='${fld:tco_descripcion_corta@js}';
document.form1.tco_descripcion_larga.value='${fld:tco_descripcion_larga@js}';
document.form1.tco_clase_auxiliar.value='${fld:tco_clase_auxiliar@#,###,###}';
document.form1.tco_auxiliar.value='${fld:tco_auxiliar@#,###,###}';
document.form1.tco_responsable.value='${fld:tco_responsable@js}';
setComboValue('tco_tipo_cco','${fld:tco_tipo_cco}','form1');
document.form1.tco_nivel.value='${fld:tco_nivel@#,###,###}';
document.form1.id.value='${fld:smn_auxiliar_centro_costo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

