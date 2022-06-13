package domain.repgen.smn_configuracion.smn_financiera.smn_baremos;

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
        String[] params = new String[] {"bar_codigo",
        		                        "bar_descripcion",
        		                        "bar_entidad_ref",
        		                        "bar_vigencia_desde",
        		                        "bar_vigencia_hasta"};
        return params;
     }
	 


}
