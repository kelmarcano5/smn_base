package domain.repgen.smn_configuracion.smn_impuestos.smn_codigos_impuestos;

import dinamica.ImportExcel;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class CustomImportExcel extends ImportExcel
{	
	@Override
	public InputStream getInputStream(File file) throws Throwable 
	{

		InputStream f = new FileInputStream(file); 
		InputStream xls = new domain.convert.ExcelConvertHelper().convertFromXLSXtoXLS(f);
		
		return xls;
	}
	
	 @Override
     public String[] getParamsNames() throws Throwable 
	 {
        String[] params = new String[] {"imp_codigo",
        		                        "imp_descripcion",
        		                        "imp_tipo_codigo_ref",
        		                        "imp_modalidad_registro_ref",
        		                        "imp_porcentaje_base",
        		                        "imp_porcentaje_calculo",
        		                        "imp_tipo_libro_ref",
        		                        "imp_tipo_persona_ref",
        		                        "imp_tipo_contribuyente_ref",
        		                        "imp_unidad_impositiva_ref",
        		                        "imp_ui_minima",
        		                        "imp_ui_maxima",
        		                        "imp_ui_sustraendo",
        		                        "imp_monto_minimo",
        		                        "imp_monto_maximo",
        		                        "imp_monto_sustraendo"};
        return params;
     }
	 


}
