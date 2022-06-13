$('#smn_estructura_codigo_id').val('${fld:smn_estructura_codigo_id}').trigger('change');
$('#nes_tipo').val('${fld:nes_tipo}').trigger('change');

ObtenerNivelInferior2('${fld:nes_predecesor}');
// var prede = '${fld:nes_predecesor}';
// console.log("en el editar: "+prede);
//$('#nes_predecesor').val('${fld:nes_predecesor}').trigger('change');

console.log('${fld:nes_predecesor}');


$('#nes_niveles').val('${fld:nes_niveles@#######}');
document.form1.nes_codigo.value='${fld:nes_codigo@js}';
$('#nes_codigo').prop('disabled',true);
document.form1.nes_nombre.value='${fld:nes_nombre@js}';
$('#nes_nombre').prop('disabled',true);

document.form1.id.value='${fld:smn_nivel_estructura_id@#######}';
setComboValue('nes_predecesor','${fld:nes_predecesor}','form1');
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


function ObtenerNivelInferior2(id)
	{		
		
		var uri="${def:actionroot}/getNivelInferior2?id=" + id;
		console.log("obtener nivel inferior 2"+uri);
		if (id!=null && id!="") 
		{
			return ajaxCall(	
							httpMethod="GET", 
							uri, 
							divResponse=null, 
							divProgress="status", 
							formName="form1", 
							afterResponseFn=null, //function 'setElementFirstIndex' select first element of combo list
							onErrorFn=null);				
		}
		
	}

/*var prede = '${fld:nes_ predecesor}';
if (prede=="") {
	$('#nes_predecesor').val('${fld:nes_predecesor}').trigger('change');
	document.form1.nes_predecesor.disabled=false;
	document.form1.nes_codigo.disabled=true;
} else {
	document.form1.nes_predecesor.disabled=false;
	document.form1.nes_codigo.disabled=true;
}*/