document.form1.prs_codigo.value='${fld:prs_codigo@js}';
document.form1.prs_descripcion.value='${fld:prs_descripcion@js}';
document.form1.prs_area_servicio.value='${fld:prs_area_servicio}';
document.form1.prs_unidad_servicio.value='${fld:prs_unidad_servicio}';
document.form1.prs_clase_auxiliar.value='${fld:prs_clase_auxiliar}';
document.form1.prs_auxiliar.value='${fld:prs_auxiliar}';
//document.form1.smn_grupos_prestadores.value='${fld:smn_grupos_prestadores}';
document.form1.prs_direccion.value='${fld:prs_direccion}';
document.form1.prs_telefono_fijo.value='${fld:prs_telefono_fijo@js}';
document.form1.prs_telefono_movil.value='${fld:prs_telefono_movil@js}';
document.form1.prs_frecuencia.value='${fld:prs_frecuencia@#.00}';
replaceDecimal(document.form1.prs_frecuencia);
document.form1.id.value='${fld:smn_prestadores_servicios_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");
<rows>selectSmnAgendaId('${fld:smn_agenda_id}','${fld:age_codigo}');</rows>
