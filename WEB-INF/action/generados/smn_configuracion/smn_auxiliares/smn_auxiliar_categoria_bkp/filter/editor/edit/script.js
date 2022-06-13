document.form1.aca_codigo.value='${fld:aca_codigo@js}';
document.form1.aca_descripcion.value='${fld:aca_descripcion@js}';
document.form1.aca_clase_auxiliar.value='${fld:aca_clase_auxiliar@#,###,###}';
setComboValue('aca_tipo_persona','${fld:aca_tipo_persona}','form1');
document.form1.id.value='${fld:smn_auxiliar_categoria_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

