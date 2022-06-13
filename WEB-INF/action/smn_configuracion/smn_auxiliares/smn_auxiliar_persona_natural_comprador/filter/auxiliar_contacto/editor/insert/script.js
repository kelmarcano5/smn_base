setComboValue('smn_clase_auxiliar_rf','${fld:smn_clase_auxiliar_rf}','form1');
setComboValue('smn_auxiliar_rf','${fld:smn_auxiliar_rf}','form1');
var combo = document.getElementById('smn_auxiliar_rf');
var smn_auxiliar_id = getSelectedIndex(combo); 
//alert(smn_auxiliar_id)
addNew();
setSelectedIndexValue(smn_auxiliar_id, combo);
alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'search(); setFocusOnForm("form1");');


var combo = document.getElementById('smn_clase_auxiliar_rf');
var smn_clase_auxiliar_id = getSelectedIndex(combo); 
//alert(smn_clase_auxiliar_id)
addNew();
setSelectedIndexValue(smn_clase_auxiliar_id, combo);
alertBox ('${lbl:b_record_added}: ${fld:id}', '${lbl:b_continue_button}', null, 'search(); setFocusOnForm("form1");');

