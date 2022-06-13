package domain.repgen.smn_configuracion.smn_sistema.smn_panel;

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
        String[] params = new String[] {"pan_service_description",
        		                        "pan_service_path",
        		                        "pan_icon_path",
        		                        "pan_app_id_ref",
        		                        "pan_role_id_ref",
        		                        "pan_orden"};
        return params;
     }
	 


}
