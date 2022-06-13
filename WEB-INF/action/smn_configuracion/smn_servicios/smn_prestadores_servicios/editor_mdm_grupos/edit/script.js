document.form1.prs_codigo.value='${fld:prs_codigo@js}';
document.form1.prs_descripcion.value='${fld:prs_descripcion@js}';
document.form1.prs_area_servicio.value='${fld:prs_area_servicio}';
document.form1.prs_unidad_servicio.value='${fld:prs_unidad_servicio}';
document.form1.prs_clase_auxiliar.value='${fld:prs_clase_auxiliar}';
document.form1.prs_auxiliar.value='${fld:prs_auxiliar}';
setComboValue('prs_orden_atencion','${fld:prs_orden_atencion}','form1');
setComboValue('prs_estatus','${fld:prs_estatus}','form1');
document.form1.prs_fecha_inicio_estatus.value='${fld:prs_fecha_inicio_estatus@dd-MM-yyyy}';
document.form1.prs_fecha_final_estatus.value='${fld:prs_fecha_final_estatus@dd-MM-yyyy}';
document.form1.prs_frecuencia.value='${fld:prs_frecuencia@#,###,##0.00}';
replaceDecimal(document.form1.prs_frecuencia);
document.form1.id.value='${fld:smn_prestadores_servicios_id@#######}';

document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

<rows>selectSmnGruposPrestadoresId('${fld:smn_grupos_prestadores_id}','${fld:gpp_codigo}');</rows>



