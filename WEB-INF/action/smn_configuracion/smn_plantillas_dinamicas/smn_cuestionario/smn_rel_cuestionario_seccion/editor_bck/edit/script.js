document.form1.smn_cuestionario_id.value='${fld:smn_cuestionario_id@#######}';
document.form1.smn_seccion_id.value='${fld:smn_seccion_id@#######}';
document.form1.rcs_tipo_seccion.value='${fld:rcs_tipo_seccion@js}';
document.form1.rcs_secuencia.value='${fld:rcs_secuencia@#,###,###}';
document.form1.rcs_color_letra.value='${fld:rcs_color_letra@js}';
document.form1.rcs_tipo_letra.value='${fld:rcs_tipo_letra@js}';
document.form1.rcs_tamano_letra.value='${fld:rcs_tamano_letra@#,###,###}';
document.form1.rcs_color_sombreado.value='${fld:rcs_color_sombreado@js}';
document.form1.rcs_espacio_identacion.value='${fld:rcs_espacio_identacion@#,###,###}';

document.form1.id.value='${fld:smn_rel_cuestionario_seccion_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

