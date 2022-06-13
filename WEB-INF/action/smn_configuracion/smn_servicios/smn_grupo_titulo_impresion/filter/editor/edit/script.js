document.form1.gti_codigo.value='${fld:gti_codigo@js}';
document.form1.gti_descripcion.value='${fld:gti_descripcion@js}';
document.form1.gti_orden.value='${fld:gti_orden@##,###,##0.00}';
setComboValue('gti_estatus','${fld:gti_estatus}','form1');
document.form1.gti_fecha_vigencia.value='${fld:gti_fecha_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_grupo_titulo_impresion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.gti_codigo.disabled=true;
 

