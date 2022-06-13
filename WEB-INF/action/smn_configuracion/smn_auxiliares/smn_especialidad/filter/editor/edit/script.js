document.form1.esp_codigo.value='${fld:esp_codigo@js}';
document.form1.esp_descripcion.value='${fld:esp_descripcion@js}';
document.form1.id.value='${fld:smn_especialidad_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.form1.esp_codigo.disabled=true;

<rows>selectSmnSucursalesId('${fld:smn_sucursales_id}','${fld:suc_codigo}');</rows>