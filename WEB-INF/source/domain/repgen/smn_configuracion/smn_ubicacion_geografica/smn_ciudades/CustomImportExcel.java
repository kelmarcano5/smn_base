package domain.repgen.smn_configuracion.smn_ubicacion_geografica.smn_ciudades;

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
        String[] params = new String[] {"ciu_entidades_federales_ref",
        		                        "ciu_codigo",
        		                        "ciu_nombre_corto",
        		                        "ciu_nombre_largo"};
        return params;
     }
	 


}
