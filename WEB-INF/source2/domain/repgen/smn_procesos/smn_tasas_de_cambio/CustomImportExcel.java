package domain.repgen.smn_procesos.smn_tasas_de_cambio;

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
        String[] params = new String[] {"smn_monedas_id_ref",
        		                        "tca_moneda_referencia_ref",
        		                        "tca_fecha_vigencia",
        		                        "tca_tasa_cambio"};
        return params;
     }
	 


}
