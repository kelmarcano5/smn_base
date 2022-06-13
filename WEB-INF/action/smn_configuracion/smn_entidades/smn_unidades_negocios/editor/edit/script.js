document.form1.uen_codigo.value='${fld:uen_codigo@js}';
document.form1.uen_nombre.value='${fld:uen_nombre@js}';
document.form1.uen_responsable.value='${fld:uen_responsable@js}';
document.form1.uen_direccion.value='${fld:uen_direccion@#,###,###}';
document.form1.uen_telefono_fijo.value='${fld:uen_telefono_fijo@js}';
document.form1.uen_telefono_movil.value='${fld:uen_telefono_movil@js}';
document.form1.uen_email.value='${fld:uen_email@js}';
document.form1.id.value='${fld:smn_unidades_negocios_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.uen_codigo.disabled=true;

