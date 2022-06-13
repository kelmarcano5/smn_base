document.form1.stg_codigo.value='${fld:stg_codigo@js}';
document.form1.stg_descripcion.value='${fld:stg_descripcion@js}';
setComboValue('smn_tipo_gasto_id','${fld:smn_tipo_gasto_id}','form1');
document.form1.id.value='${fld:smn_sub_tipo_gasto_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.stg_codigo.disabled=true;
 

document.form1.smn_tipo_gasto_id.disabled=true;