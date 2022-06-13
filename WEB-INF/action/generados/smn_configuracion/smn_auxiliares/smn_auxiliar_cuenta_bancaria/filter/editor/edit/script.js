document.form1.acb_num_cuenta.value='${fld:acb_num_cuenta@js}';
document.form1.acb_tipo_cta_banco.value='${fld:acb_tipo_cta_banco@#,###,###}';
document.form1.acb_respons_cuenta.value='${fld:acb_respons_cuenta@js}';
document.form1.acb_banco_pertenece.value='${fld:acb_banco_pertenece@#,###,###}';
document.form1.acb_num_aba.value='${fld:acb_num_aba@js}';
document.form1.id.value='${fld:smn_auxiliar_cuenta_bancaria_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

