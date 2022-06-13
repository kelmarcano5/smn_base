package domain.repgen.smn_configuracion.smn_ubicacion_geografica.smn_paises;

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
        String[] params = new String[] {"pai_codigo",
        		                        "pai_nombre_corto",
        		                        "pai_nombre_largo",
        		                        "pai_gentilicio",
        		                        "pai_codigo_ddi",
        		                        "pai_idioma_oficial_ref",
        		                        "pai_moneda_oficial_ref"};
        return params;
     }
	 


}
