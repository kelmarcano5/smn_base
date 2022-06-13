setComboValue('smn_naturaleza_auxiliar_rf','${fld:smn_naturaleza_auxiliar_rf}','form1');
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('aux_tipo_persona','${fld:aux_tipo_persona}','form1');
document.form1.aux_codigo.value='${fld:aux_codigo@js}';
document.form1.aux_descripcion.value='${fld:aux_descripcion@js}';
document.form1.aux_apellidos.value='${fld:aux_apellidos@js}';
document.form1.aux_nombres.value='${fld:aux_nombres@js}';
document.form1.aux_representante_legal.value='${fld:aux_representante_legal@js}';
document.form1.aux_tipo_doc_oficial_rf.value='${fld:aux_tipo_doc_oficial_rf@#,###,###}';
document.form1.aux_num_doc_oficial.value='${fld:aux_num_doc_oficial@js}';
document.form1.aux_rif.value='${fld:aux_rif@js}';
document.form1.aux_num_coleg_medicos.value='${fld:aux_num_coleg_medicos@js}';
document.form1.aux_num_minist_salud.value='${fld:aux_num_minist_salud@js}';
setComboValue('aux_sexo','${fld:aux_sexo}','form1');
setComboValue('aux_estado_civil','${fld:aux_estado_civil}','form1');
document.form1.aux_fecha_nac.value='${fld:aux_fecha_nac@dd-MM-yyyy}';
document.form1.aux_lugar_nac.value='${fld:aux_lugar_nac@js}';
setComboValue('aux_direccion_rf','${fld:aux_direccion_rf}','form1');
setComboValue('aux_nacionalidad_rf','${fld:aux_nacionalidad_rf}','form1');
setComboValue('aux_nacionalizado','${fld:aux_nacionalizado}','form1');
document.form1.aux_fecha_gaceta_nac.value='${fld:aux_fecha_gaceta_nac@dd-MM-yyyy}';
document.form1.aux_num_gaceta.value='${fld:aux_num_gaceta@#,###,###}';
document.form1.aux_benef_pago.value='${fld:aux_benef_pago@js}';
setComboValue('aux_cond_pago_rf','${fld:aux_cond_pago_rf}','form1');
setComboValue('aux_condicion_financiera_rf','${fld:aux_condicion_financiera_rf}','form1');
setComboValue('aux_cuenta_bancaria_rf','${fld:aux_cuenta_bancaria_rf}','form1');
document.form1.aux_persona_contacto.value='${fld:aux_persona_contacto@js}';
document.form1.aux_observacion.value='${fld:aux_observacion@js}';
document.form1.id.value='${fld:smn_auxiliar_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

document.form1.cnt_apellidos.value='${fld:cnt_apellidos@js}';
document.form1.cnt_nombres.value='${fld:cnt_nombres@js}';
document.form1.cnt_telefono_contacto.value='${fld:cnt_telefono_contacto@js}';

setComboValue('smn_tipo_contactos_rf','${fld:smn_tipo_contactos_rf}','form1');
document.form1.cnt_descripcion.value='${fld:cnt_descripcion@js}';

setComboValue('smn_tipo_contactos_rf1','${fld:smn_tipo_contactos_rf1}','form1');
document.form1.cnt_descripcion1.value='${fld:cnt_descripcion1@js}';
 

document.form1.aux_codigo.disabled=true;
 

