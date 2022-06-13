package domain.repgen.smn_configuracion.smn_auxiliares.smn_clase_auxiliar;

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
        String[] params = new String[] {"cla_codigo",
        		                        "cla_nombre",
        		                        "cla_modulo_ref",
        		                        "cla_naturaleza_ref"};
        return params;
     }
	 


}
