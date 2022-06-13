package domain.repgen.smn_configuracion.smn_auxiliares.smn_agenda;

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
        String[] params = new String[] {"age_codigo",
        		                        "age_descripcion",
        		                        "age_dia_semana_ref",
        		                        "age_hora_desde",
        		                        "age_jornada_desde_ref",
        		                        "age_hora_hasta",
        		                        "age_jornada_hasta_ref",
        		                        "age_localidad"};
        return params;
     }
	 


}
