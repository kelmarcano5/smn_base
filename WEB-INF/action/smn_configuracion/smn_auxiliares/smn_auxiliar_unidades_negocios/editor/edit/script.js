document.form1.tun_codigo.value='${fld:tun_codigo@js}';
document.form1.tun_nombre.value='${fld:tun_nombre@js}';
setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
document.form1.tun_responsable.value='${fld:tun_responsable@js}';
document.form1.tun_direccion.value='${fld:tun_direccion@#,###,###}';
document.form1.tun_telefono_fijo.value='${fld:tun_telefono_fijo@js}';
document.form1.tun_telefono_movil.value='${fld:tun_telefono_movil@js}';
document.form1.tun_email.value='${fld:tun_email@js}';
document.form1.id.value='${fld:smn_auxiliar_unidades_negocios_id@#######}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tun_codigo.disabled=true;
 

