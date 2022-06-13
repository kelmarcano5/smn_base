document.form1.cue_codigo.value='${fld:cue_codigo@js}';
document.form1.cue_descripcion.value='${fld:cue_descripcion@js}';
setComboValue('smn_modulo_rf','${fld:smn_modulo_rf}','form1');
document.form1.cue_color_letra.value=('${fld:cue_color_letra@js}');
setComboValue('cue_tipo_letra','${fld:cue_tipo_letra}','form1');
document.form1.cue_tamano_letra.value=('${fld:cue_tamano_letra@js}');
document.form1.cue_color_sombreado.value=('${fld:cue_color_sombreado@js}');
document.form1.cue_color_formulario.value=('${fld:cue_color_formulario@js}');
document.form1.cue_nivel_seguridad.value=('${fld:cue_nivel_seguridad}');

document.form1.id.value='${fld:smn_cuestionario_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.form1.cue_codigo.disabled=true;
 

