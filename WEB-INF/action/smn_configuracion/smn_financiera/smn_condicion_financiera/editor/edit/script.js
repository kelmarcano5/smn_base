document.form1.cfi_codigo.value='${fld:cfi_codigo@js}';
document.form1.cfi_description.value='${fld:cfi_description@js}';
document.form1.cfi_cant_dias.value='${fld:cfi_cant_dias@#,###,###}';
document.form1.cfi_limite_credito.value='${fld:cfi_limite_credito@#,###,##0.00}';
document.form1.cfi_porc_exceso_limite.value='${fld:cfi_porc_exceso_limite@#,###,##0.00}';
setComboValue('cfi_valida_saldos_vec','${fld:cfi_valida_saldos_vec}','form1');
document.form1.cfi_dias_adic_saldos_venc.value='${fld:cfi_dias_adic_saldos_venc@#,###,###}';
document.form1.cfi_num_cheques_devuel.value='${fld:cfi_num_cheques_devuel@#,###,###}';
setComboValue('cfi_estatus','${fld:cfi_estatus}','form1');
document.form1.cfi_vigencia.value='${fld:cfi_vigencia@dd-MM-yyyy}';
document.form1.id.value='${fld:smn_condicion_financiera_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.cfi_codigo.disabled=true;
 

