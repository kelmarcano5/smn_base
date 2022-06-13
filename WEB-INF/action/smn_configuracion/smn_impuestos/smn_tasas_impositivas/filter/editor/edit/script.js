document.form1.smn_unidades_impositivas_id_name.value='${fld:uim_codigo_pl0@js}';
document.form1.smn_unidades_impositivas_id.value='${fld:smn_unidades_impositivas_id@#,###,###}';
document.form1.tim_fecha_vigencia.value='${fld:tim_fecha_vigencia@dd-MM-yyyy}';
document.form1.tim_valor.value='${fld:tim_valor@#,###,##0.00}';
document.form1.id.value='${fld:smn_tasas_impositivas_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

