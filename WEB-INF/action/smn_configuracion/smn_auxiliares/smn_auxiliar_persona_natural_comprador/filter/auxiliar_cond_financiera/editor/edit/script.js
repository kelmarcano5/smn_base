document.form1.cfn_codigo.value='${fld:cfn_codigo@js}';
document.form1.cfn_descripcion.value='${fld:cfn_descripcion@js}';
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
document.form1.smn_clase_auxiliar_rf.value='${fld:smn_clase_auxiliar_rf@#,###,###}';
document.form1.smn_auxiliar_rf.value='${fld:smn_auxiliar_rf@#,###,###}';
document.form1.cfn_limite_credito.value='${fld:cfn_limite_credito@#,###,##0.00}';
document.form1.cfn_porc_exceso_limite.value='${fld:cfn_porc_exceso_limite@#,###,##0.00}';
setComboValue('cfn_valida_saldos_vec','${fld:cfn_valida_saldos_vec}','form1');
document.form1.cfn_dias_adic_saldos_venc.value='${fld:cfn_dias_adic_saldos_venc@#,###,###}';
document.form1.cfn_num_cheques_devuel.value='${fld:cfn_num_cheques_devuel@#,###,###}';
document.form1.id.value='${fld:smn_auxiliar_cond_financiera_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.cfn_codigo.disabled=true;
document.getElementById('smn_clase_auxiliar_rf').disabled=true;
document.getElementById('smn_auxiliar_rf').disabled=true;

