document.form1.efi_codigo.value='${fld:efi_codigo@js}';
document.form1.efi_nombre.value='${fld:efi_nombre@js}';
document.form1.efi_direccion.value='${fld:efi_direccion@#,###,###}';
document.form1.efi_telefono_fijo.value='${fld:efi_telefono_fijo@js}';
document.form1.efi_telefono_movil.value='${fld:efi_telefono_movil@js}';
document.form1.efi_codigo_aba.value='${fld:efi_codigo_aba@js}';
document.form1.efi_codigo_swift.value='${fld:efi_codigo_swift@js}';
setComboValue('efi_req_banco_intermediario','${fld:efi_req_banco_intermediario}','form1');
document.form1.efi_banco_intermediario.value='${fld:efi_banco_intermediario@#,###,###}';
document.form1.efi_routing.value='${fld:efi_routing@js}';
document.form1.efi_contacto.value='${fld:efi_contacto@js}';
document.form1.id.value='${fld:smn_entidades_financieras_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

