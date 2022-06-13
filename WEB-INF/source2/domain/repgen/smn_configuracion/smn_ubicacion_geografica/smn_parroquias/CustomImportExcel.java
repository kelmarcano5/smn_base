package domain.repgen.smn_configuracion.smn_ubicacion_geografica.smn_parroquias;

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
        String[] params = new String[] {"prr_municipios_ref",
        		                        "prr_codigo",
        		                        "prr_nombre_corto",
        		                        "prr_nombre_largo"};
        return params;
     }
	 


}
