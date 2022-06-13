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

document.getElementById("smn_porcentaje_rf").value = '${fld:porc@######}';

document.getElementById("bdc_cantidad").value = '${fld:cant@######}';

document.getElementById("bdc_precio_ml").value = '${fld:prec2@######}';

var iddet = '${fld:id_detalle}';

calcularmonto();

var formacalculo = document.getElementById("smn_forma_calculo_rf").value

if (formacalculo == 'M' || formacalculo == 'R') {

	document.getElementById("bdc_precio_ml").value = '${fld:prec_local_comp@######}';

	document.getElementById("bdc_monto_ml").value = '${fld:mont_local_comp@######}';

} 

if (formacalculo == 'D') {

	verificardiferencia(iddet);

}


function verificardiferencia(iddet) {
	
	//if (id!=null && id!="") {
			return ajaxCall(	
							httpMethod="GET", 
							uri="${def:actionroot}/getdiferencia?id=" + iddet, 
							divResponse=null, 
							divProgress="status", 
							formName="form1", 
							afterResponseFn=null, //function 'setElementFirstIndex' select first element of combo list
							onErrorFn=null);				
		//}

}
//document.getElementById("bdc_monto_ml").value = '${fld:mont_local@#,###,##0.00}';

