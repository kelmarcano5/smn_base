package domain.repgen.smn_configuracion.smn_auxiliares.smn_auxiliar_areas_servicios;

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
        String[] params = new String[] {"smn_auxiliar_tipos_servicios_ref",
        		                        "tse_codigo",
        		                        "tse_descripcion",
        		                        "tse_auxiliar_ref",
        		                        "tse_auxiliar_sucursal_ref",
        		                        "tse_auxiliar_unidad_negocio_ref"};
        return params;
     }
	 


}
