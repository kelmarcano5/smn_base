package domain.repgen.smn_configuracion.smn_auxiliares.smn_afiliaciones;

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
        String[] params = new String[] {"afc_codigo",
        		                        "afc_descripcion",
        		                        "afc_afiliado_ref",
        		                        "afc_modulo_ref",
        		                        "afc_es_titular_ref",
        		                        "afc_parentezco_ref"};
        return params;
     }
	 


}
