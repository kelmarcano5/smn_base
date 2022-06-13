document.form1.aux_apellidos.value='${fld:aux_apellidos@js}';
document.form1.aux_nombres.value='${fld:aux_nombres@js}';
document.form1.email.value='${fld:email@js}';

var nombre = document.form1.aux_nombres.value='${fld:aux_nombres@js}';
var apellido = document.form1.aux_apellidos.value='${fld:aux_apellidos@js}';
var des = document.form1.auc_descripcion.value; 


	//alert("No existe auxiliar");
if(nombre == null || apellido == null || des == null){

	document.form1.auc_descripcion.value="";

	
}else{
	document.form1.auc_descripcion.value='${fld:auc_descripcion@js}';
}


	//document.form1.id.value='${fld:smn_auxiliar_id@#######}';
 
setFocusOnForm("form1");




 

