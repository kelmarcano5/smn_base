document.form1.fer_codigo.value='${fld:fer_codigo@js}';
document.form1.fer_descripcion.value='${fld:fer_descripcion@js}';
document.form1.fer_pais.value='${fld:fer_pais@#,###,###}';
document.form1.fer_entidad_federal.value='${fld:fer_entidad_federal@#,###,###}';
document.form1.fer_ciudad.value='${fld:fer_ciudad@#,###,###}';
document.form1.fer_municipio.value='${fld:fer_municipio@#,###,###}';
document.form1.fer_feriado.value='${fld:fer_feriado@js}';
setComboValue('fer_laborable','${fld:fer_laborable}','form1');
document.form1.id.value='${fld:smn_feriados_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.fer_codigo.disabled=true;
 

