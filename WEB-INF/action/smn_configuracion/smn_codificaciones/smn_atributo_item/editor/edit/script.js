document.form1.ati_codigo.value='${fld:ati_codigo@js}';
document.form1.ati_nombre.value='${fld:ati_nombre@js}';
document.form1.ati_fecha_vigencia_desde.value='${fld:ati_fecha_vigencia_desde@dd-MM-yyyy}';
document.form1.ati_fecha_vigencia_hasta.value='${fld:ati_fecha_vigencia_hasta@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_atributo_item_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.ati_codigo.disabled=true;
 

