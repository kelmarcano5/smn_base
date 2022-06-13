setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
document.form1.adl_nombre_compania.value='${fld:adl_nombre_compania@js}';
document.form1.adl_rif.value='${fld:adl_rif@js}';
document.form1.adl_departamento.value='${fld:adl_departamento@js}';
document.form1.adl_cargo.value='${fld:adl_cargo@js}';
setComboValue('smn_paises_rf','${fld:smn_paises_rf}','form1');
setComboValue('smn_entidades_federales_rf','${fld:smn_entidades_federales_rf}','form1');
setComboValue('smn_ciudades_rf','${fld:smn_ciudades_rf}','form1');
document.form1.adl_direccion.value='${fld:adl_direccion@js}';
document.form1.adl_telefono_oficina.value='${fld:adl_telefono_oficina@js}';
document.form1.adl_email.value='${fld:adl_email@js}';
document.form1.id.value='${fld:smn_auxiliar_datos_laborales_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

