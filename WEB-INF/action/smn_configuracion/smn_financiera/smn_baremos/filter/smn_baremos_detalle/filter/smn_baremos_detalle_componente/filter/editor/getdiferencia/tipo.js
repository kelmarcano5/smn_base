// listboxClear("smn_tipo_compuesto_rf");

// var optionChoose = document.createElement("option");
// optionChoose.text = '[${lbl:b_choose}]';
// optionChoose.value = "0";
// document.form1.smn_tipo_compuesto_rf.add(optionChoose, 0);

// <smn_tipo_compuesto_rf>
// 	var option = document.createElement("option");
// 	option.text = "${fld:item@js}"; 
// 	option.value = "${fld:id}";
// 	document.form1.smn_tipo_compuesto_rf.add(option, 0);
// </smn_tipo_compuesto_rf>

//alert('${fld:tipo}');

var mont =   '${fld:monto_detalle_comp}';
var motdet =  '${fld:monto_prec_baremos_det}';
var monto_final = "";

monto_final = motdet- mont;

document.getElementById("bdc_precio_ml").value = monto_final;
document.getElementById("bdc_monto_ml").value = monto_final;


