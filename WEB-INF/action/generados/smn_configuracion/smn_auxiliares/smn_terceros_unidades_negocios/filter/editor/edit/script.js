document.form1.smn_terceros_id_name.value='${fld:ter_descripcion_corta_pl0@js}';
document.form1.smn_terceros_id.value='${fld:smn_terceros_id@#,###,###}';
document.form1.tun_codigo.value='${fld:tun_codigo@js}';
document.form1.tun_nombre.value='${fld:tun_nombre@js}';
document.form1.tun_responsable.value='${fld:tun_responsable@js}';
document.form1.tun_direccion.value='${fld:tun_direccion@#,###,###}';
document.form1.tun_telefono_fijo.value='${fld:tun_telefono_fijo@js}';
document.form1.tun_telefono_movil.value='${fld:tun_telefono_movil@js}';
document.form1.tun_email.value='${fld:tun_email@js}';
document.form1.id.value='${fld:smn_terceros_unidades_negocios_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "Editar registro";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");

