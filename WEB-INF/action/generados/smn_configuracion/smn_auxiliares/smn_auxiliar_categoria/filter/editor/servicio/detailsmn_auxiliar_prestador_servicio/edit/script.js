document.form2.aps_codigo2.value='${fld:aps_codigo2@js}';
document.form2.aps_descripcion2.value='${fld:aps_descripcion2@js}';
document.form2.aps_beneficiario2.value='${fld:aps_beneficiario2@js}';
document.form2.aps_tipo_doc_oficial2_name.value='${fld:aps_tipo_doc_oficial2_name@js}';
setComboValue('aps_tipo_doc_oficial2','${fld:aps_tipo_doc_oficial2}','form2');
document.form2.aps_num_doc_oficial2.value='${fld:aps_num_doc_oficial2@js}';
setComboValue('aps_clasif_abc2','${fld:aps_clasif_abc2}','form2');
document.form2.aps_clasif_abc2_name.value='${fld:aps_clasif_abc2_name@js}';
document.form2.aps_rif2.value='${fld:aps_rif2@js}';
document.form2.aps_direccion2_name.value='${fld:aps_direccion2_name@js}';
setComboValue('aps_direccion2','${fld:aps_direccion2}','form2');
document.form2.aps_cuenta_bancaria2_name.value='${fld:aps_cuenta_bancaria2_name@js}';
setComboValue('aps_cuenta_bancaria2','${fld:aps_cuenta_bancaria2}','form2');
document.form2.aps_contactos2_name.value='${fld:aps_contactos2_name@js}';
setComboValue('aps_contactos2','${fld:aps_contactos2}','form2');
document.form2.aps_persona_contacto2.value='${fld:aps_persona_contacto2@js}';
document.form2.aps_representante_legal2.value='${fld:aps_representante_legal2@js}';
document.form2.aps_benef_pago2.value='${fld:aps_benef_pago2@js}';
document.form2.aps_cond_pago2_name.value='${fld:aps_cond_pago2_name@js}';
setComboValue('aps_cond_pago2','${fld:aps_cond_pago2}','form2');
document.form2.aps_observacion2.value='${fld:aps_observacion2@js}';

document.form2.rowindex.value = "${fld:id}";
document.getElementById("saveDetail2").value = "Modificar";
setFocusOnForm("form2");
