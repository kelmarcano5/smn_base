document.form1.fop_codigo.value='${fld:fop_codigo@js}';
document.form1.fop_descripcion.value='${fld:fop_descripcion@js}';
document.form1.fop_medio_pago.value='${fld:fop_medio_pago@#,###,###}';
setComboValue('fop_requiere_banco','${fld:fop_requiere_banco}','form1');
document.form1.fop_franquicia.value='${fld:fop_franquicia@#,###,###}';
document.form1.id.value='${fld:smn_formas_pago_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

