var smn_monedas_id = '${fld:smn_monedas_id}';
$('#smn_monedas_id').val(smn_monedas_id).trigger('change');

var tca_moneda_referencia = '${fld:tca_moneda_referencia}';
$('#tca_moneda_referencia').val(tca_moneda_referencia).trigger('change');

var tipo = '${fld:tca_tipo_tasa}';
$('#tca_tipo_tasa').val(tipo).trigger('change');
$('#tca_estatus').val('${fld:tca_estatus}').trigger('change');

document.form1.smn_monedas_id.value='${fld:smn_monedas_id@#,###,###}';
document.form1.tca_moneda_referencia.value='${fld:tca_moneda_referencia@#,###,###}';
document.form1.tca_fecha_vigencia.value='${fld:tca_fecha_vigencia@dd-MM-yyyy}';
document.form1.tca_tasa_cambio.value='${fld:tca_tasa_cambio@#,###,##0.00}';
document.form1.id.value='${fld:smn_tasas_de_cambio_id@#######}';
document.form1.tca_descripcion.value='${fld:tca_descripcion@js}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

