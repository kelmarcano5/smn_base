package domain.repgen.smn_configuracion.smn_financiera.smn_feriados;

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
        String[] params = new String[] {"fer_codigo",
        		                        "fer_descripcion",
        		                        "fer_pais_ref",
        		                        "fer_entidad_federal_ref",
        		                        "fer_ciudad_ref",
        		                        "fer_municipio_ref",
        		                        "fer_feriado",
        		                        "fer_laborable_ref"};
        return params;
     }
	 


}
