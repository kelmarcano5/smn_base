document.form1.smn_monedas_id_name.value='${fld:mon_codigo_pl0@js}';
document.form1.smn_monedas_id.value='${fld:smn_monedas_id@#,###,###}';
document.form1.tca_moneda_referencia.value='${fld:tca_moneda_referencia@#,###,###}';
document.form1.tca_fecha_vigencia.value='${fld:tca_fecha_vigencia@dd-MM-yyyy}';
document.form1.tca_tasa_cambio.value='${fld:tca_tasa_cambio@#,###,##0.00}';
document.form1.id.value='${fld:smn_tasas_de_cambio_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

