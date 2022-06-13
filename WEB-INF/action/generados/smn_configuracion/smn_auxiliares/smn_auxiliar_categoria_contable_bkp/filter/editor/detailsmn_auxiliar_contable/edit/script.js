document.form2.aac_codigo2.value='${fld:aac_codigo2@js}';
document.form2.aac_descripcion2.value='${fld:aac_descripcion2@js}';
document.form2.aac_tipo_doc_oficial2_name.value='${fld:aac_tipo_doc_oficial2_name@js}';
setComboValue('aac_tipo_doc_oficial2','${fld:aac_tipo_doc_oficial2}','form2');
document.form2.aac_num_doc_oficial2.value='${fld:aac_num_doc_oficial2@js}';

document.form2.rowindex.value = "${fld:id}";
document.getElementById("saveDetail2").value = "Modificar";
setFocusOnForm("form2");
