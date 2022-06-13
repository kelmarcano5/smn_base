package domain.repgen.smn_configuracion.smn_sistema.smn_menu_traduccion;

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
        String[] params = new String[] {"mnt_app_id_ref",
        		                        "mnt_menu_id_ref",
        		                        "mnt_title",
        		                        "mnt_locale_ref"};
        return params;
     }
	 


}
