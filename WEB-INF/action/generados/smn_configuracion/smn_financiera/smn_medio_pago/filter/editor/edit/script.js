document.form1.mpa_codigo.value='${fld:mpa_codigo@js}';
document.form1.mpa_descripcion.value='${fld:mpa_descripcion@js}';
setComboValue('mpa_efectivo','${fld:mpa_efectivo}','form1');
document.form1.id.value='${fld:smn_medio_pago_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

