document.form2.pdl_num_periodo2.value='${fld:pdl_num_periodo2@#,###,###}';
document.form2.pdl_inicio_periodo2.value='${fld:pdl_inicio_periodo2@js}';
document.form2.pdl_final_periodo2.value='${fld:pdl_final_periodo2@js}';

document.form2.rowindex.value = "${fld:id}";
document.getElementById("saveDetail2").value = "${lbl:b_modify_button}";
setFocusOnForm("form2");


