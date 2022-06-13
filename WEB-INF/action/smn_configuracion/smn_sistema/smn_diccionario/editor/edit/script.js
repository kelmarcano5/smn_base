document.form1.dic_codigo.value='${fld:dic_codigo@js}';
document.form1.dic_descripcion.value='${fld:dic_descripcion@js}';
document.form1.dic_esquema.value='${fld:dic_esquema@js}';
document.form1.dic_tabla.value='${fld:dic_tabla@js}';
document.form1.dic_campo.value='${fld:dic_campo@js}';
document.form1.dic_tipo_dato.value='${fld:dic_tipo_dato@js}';
document.form1.dic_tamano.value='${fld:dic_tamano@#,###,###}';
document.form1.dic_posicion_inicial.value='${fld:dic_posicion_inicial@#,###,###}';
document.form1.dic_posicion_final.value='${fld:dic_posicion_final@#,###,###}';
document.form1.dic_ruta.value='${fld:dic_ruta@js}';
document.form1.dic_observacion.value='${fld:dic_observacion@js}';
document.form1.dic_estatus.value='${fld:dic_estatus@js}';
document.form1.dic_fecha_estatus.value='${fld:dic_fecha_estatus@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_diccionario_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.dic_codigo.disabled=true;
 

