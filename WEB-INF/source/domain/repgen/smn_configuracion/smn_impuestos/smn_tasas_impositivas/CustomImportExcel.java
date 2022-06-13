package domain.repgen.smn_configuracion.smn_impuestos.smn_tasas_impositivas;

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
        String[] params = new String[] {"smn_unidades_impositivas_id_ref",
        		                        "tim_fecha_vigencia",
        		                        "tim_valor"};
        return params;
     }
	 


}
