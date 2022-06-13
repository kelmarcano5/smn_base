let myTable= "<table style='width:100%; border-collapse: separate; border-spacing: 5px;'>";
	myTable+="<tr style='width:100%; border-collapse: separate; border-spacing: 10px';><td> ${fld:seccion} </td></tr>";
<rows>
	myTable+="<tr style='background:${fld:csp_color_sombreado};'><td style=' color:${fld:csp_color_letra};font-family:${fld:csp_tipo_letra};font-size:${fld:csp_tamano_letra};text-indent:${fld:csp_espacio_identacion}; border: solid; border-width: 15px 15;'> ${fld:pregunta_combo}";
	myTable+="<table style='width:100%; border-collapse: separate; border-spacing: 10px;'>";
	myTable+="<tr><td>${fld:smn_tipo_variable_col_1_combo}</td></tr>";
	myTable+="<tr><td>${fld:smn_tipo_variable_col_2_combo}</td></tr>";
	myTable+="<tr><td>${fld:smn_tipo_variable_col_3_combo}</td></tr>";
	myTable+="<tr><td>${fld:smn_tipo_variable_col_4_combo}</td></tr>";
	myTable+="</table>";
	myTable+="</td></tr>"; 
</rows>

myTable+="</table>";
document.getElementById('preguntas${fld:id}').innerHTML = myTable;