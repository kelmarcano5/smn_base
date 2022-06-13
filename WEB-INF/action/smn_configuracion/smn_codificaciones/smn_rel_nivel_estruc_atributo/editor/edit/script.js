$('#smn_nivel_estructura_id').val('${fld:smn_nivel_estructura_id}').trigger('change');
$('#smn_atributo_item_id').val('${fld:smn_atributo_item_id}').trigger('change');
document.form1.rna_secuencia.value='${fld:rna_secuencia@#,###,###}';
document.form1.id.value='${fld:smn_rel_nivel_estruc_atributo_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

