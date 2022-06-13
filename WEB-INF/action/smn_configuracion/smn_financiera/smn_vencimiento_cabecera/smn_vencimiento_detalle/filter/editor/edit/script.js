setComboValue('smn_vencimiento_cabecera_id','${fld:smn_vencimiento_cabecera_id}','form1');
document.form1.tvd_titulo.value='${fld:tvd_titulo@js}';
setComboValue('tvd_tipo_aplicacion','${fld:tvd_tipo_aplicacion}','form1');
document.form1.tvd_dias_desde.value='${fld:tvd_dias_desde@#,###,###}';
document.form1.tvd_dias_hasta.value='${fld:tvd_dias_hasta@#,###,###}';
document.form1.id.value='${fld:smn_vencimiento_detalle_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

