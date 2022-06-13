//get select object 
//var objSelect1 = document.getElementById('plc_plan_cuenta_id');
var objSelect1 = document.getElementById('smn_clase_auxiliar_rf');

//set element selected to field referenced
parent.setSelectedIndex(objSelect1, "${fld:descripcion}");
		
//get select object 
//var objSelect2 = document.getElementById('plc_codigo');
var objSelect2 = document.getElementById('smn_auxiliar_rf');
				
//set element selected to field referenced
parent.setSelectedIndex(objSelect2, "${fld:nombres}");
/*
//get select object 
var objSelect3 = document.getElementById('plc_nombre');
				
//set element selected to field referenced
parent.setSelectedIndex(objSelect3, "${fld:plc_nombre}");
*/