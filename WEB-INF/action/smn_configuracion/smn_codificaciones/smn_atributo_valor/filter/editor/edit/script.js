setComboValue('smn_atributo_item_id','${fld:smn_atributo_item_id}','form1');
document.form1.atv_codigo.value='${fld:atv_codigo@js}';
document.form1.atv_descripcion.value='${fld:atv_descripcion@js}';
document.form1.atv_fecha_vigencia_desde.value='${fld:atv_fecha_vigencia_desde@dd-MM-yyyy}';
document.form1.atv_fecha_vigencia_hasta.value='${fld:atv_fecha_vigencia_hasta@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_atributo_valor_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.atv_codigo.disabled=true;
 

