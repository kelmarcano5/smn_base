package smn_domain.smn_configuracion.smn_auxiliares.smn_auxiliar_persona_natural.importexcel.excel.template;

import jxl.*;
import jxl.write.*;
import dinamica.*;
import dinamica.xml.Element;

/**
 * Genera un archivo excel con el contenido de un recordset,
 * se basa en una clase generica del framework. En general solo debe
 * implementar el metodo "createWorkbook".
 * <br><br>
 * Actualizado: 02-12-2016<br>
 * @author Juan Carlos Eduardo Hidalgo
 */

public class ExcelReportOutput extends GenericExcelOutput 
{

	@Override
	public void setColumns(Element[] cols, WritableSheet sheet,
			WritableCellFormat wcf, GenericTransaction data, int columnCount,
			int rowCount) throws Throwable {
		
		super.setColumns(cols, sheet, wcf, data, columnCount, rowCount);

		CellView cellView = new CellView();
		cellView.setHidden(true); //set hidden
				
		/** sheet.setColumnView(valor, cellView); **/
				sheet.setColumnView(38, cellView);
		sheet.setColumnView(39, cellView);
		sheet.setColumnView(40, cellView);
		sheet.setColumnView(41, cellView);
		sheet.setColumnView(42, cellView);
		sheet.setColumnView(43, cellView);
		sheet.setColumnView(44, cellView);
		sheet.setColumnView(45, cellView);
		sheet.setColumnView(46, cellView);
		sheet.setColumnView(47, cellView);
		sheet.setColumnView(48, cellView);
		sheet.setColumnView(49, cellView);
		sheet.setColumnView(50, cellView);
		sheet.setColumnView(51, cellView);
		sheet.setColumnView(52, cellView);
		sheet.setColumnView(53, cellView);
		sheet.setColumnView(54, cellView);
		sheet.setColumnView(55, cellView);
		sheet.setColumnView(56, cellView);
		sheet.setColumnView(57, cellView);
		sheet.setColumnView(58, cellView);
		
	}	

}
