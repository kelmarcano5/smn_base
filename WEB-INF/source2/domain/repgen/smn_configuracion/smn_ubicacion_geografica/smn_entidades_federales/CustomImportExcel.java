package domain.repgen.smn_configuracion.smn_ubicacion_geografica.smn_entidades_federales;

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
        String[] params = new String[] {"efe_paises_ref",
        		                        "efe_codigo",
        		                        "efe_nombre_corto",
        		                        "efe_nombre_largo"};
        return params;
     }
	 


}
