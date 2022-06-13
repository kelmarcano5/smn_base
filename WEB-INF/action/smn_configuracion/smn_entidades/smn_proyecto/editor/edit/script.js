document.form1.pry_codigo.value='${fld:pry_codigo@js}';
document.form1.pry_nombre.value='${fld:pry_nombre@js}';
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
document.form1.pry_fecha_inicio.value='${fld:pry_fecha_inicio@dd-MM-yyyy}';
document.form1.pry_fecha_fin_estimada.value='${fld:pry_fecha_fin_estimada@dd-MM-yyyy}';
document.form1.pry_fecha_cierre.value='${fld:pry_fecha_cierre@dd-MM-yyyy}';
setComboValue('pry_estatus','${fld:pry_estatus}','form1');
document.form1.id.value='${fld:smn_proyecto_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.pry_codigo.disabled=true;
 

